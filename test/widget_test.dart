// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterproviderboilerplate/main.dart';

void main() {

  //Valid Case
  test('Valid Password Test', () {
    var result = "Password is Emty";
    expect(result, "Password is Emty");
  });

  test('Valid Email Test', () {
    var result = "rafi924@123";
    expect(result, "rafi@924@gmail.com");
  });
}
