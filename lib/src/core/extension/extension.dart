import 'package:flutter/material.dart';

extension Navgatior on BuildContext {
  Future<dynamic> push(Widget widget) {
    return Navigator.of(this).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }
  Future<dynamic> pushReplacement(Widget widget) {
    return Navigator.of(this). pushReplacement(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }
}
