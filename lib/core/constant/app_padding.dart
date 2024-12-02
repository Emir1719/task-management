import 'package:flutter/material.dart';

class AppPadding {
  static final _instance = AppPadding._();
  AppPadding._();
  factory AppPadding() => _instance;

  static const EdgeInsets main = EdgeInsets.all(25);
}
