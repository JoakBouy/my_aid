import 'package:aid/presentation/schedule_page/models/schedule_item_model.dart';
import 'package:aid/presentation/schedule_page/models/schedule_model.dart';

import '../schedule_page/widgets/schedule_item_widget.dart';
import 'package:aid/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage> {
  final ScheduleModel _scheduleModel = ScheduleModel();
  List<ScheduleItemModel> _scheduleItems = [];

  @override
  void initState() {
    super.initState();
    _fetchScheduleItems();
  }

  Future<void> _fetchScheduleItems() async {
  try {
    final scheduleItems = await _scheduleModel.getScheduleItems();
    setState(() {
      _scheduleItems = scheduleItems;
    });
  } catch (e) {
    // Show an error message or log the error
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error fetching schedule items: $e')));
  }
}

  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: FutureBuilder<void>(
        future: _fetchScheduleItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator while the schedule items are being fetched
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Show an error message if there was an error fetching the schedule items
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Container(
              width: double.maxFinite,
              decoration: AppDecoration.white,
              child: Column(
                children: [
                  SizedBox(height: 32.v),
                  _buildSchedule(context),
                ],
              ),
            );
          }
        },
      ),
    ),
  );
}

  Widget _buildSchedule(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: _scheduleItems.length,
        itemBuilder: (context, index) {
          return ScheduleItemWidget(scheduleItem: _scheduleItems[index]);
        },
      ),
    );
  }
}