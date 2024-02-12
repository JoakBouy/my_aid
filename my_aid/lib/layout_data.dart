import 'package:flutter/widgets.dart';

class LayoutData extends InheritedWidget {
  final double height;
  final double width;

  const LayoutData({super.key, 
    required this.height,
    required this.width,
    required Widget child,
  }) : super(child: child);

  static LayoutData of(BuildContext context) {
    final LayoutData? result = context.dependOnInheritedWidgetOfExactType<LayoutData>();
    assert(result != null, 'No LayoutData found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}