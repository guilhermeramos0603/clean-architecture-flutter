import 'package:cleanarc/core/inject/inject.dart';
import 'package:cleanarc/layers/presentation/ui/pages/car_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(
    MaterialApp(
      home: CarPage(),
    ),
  );
}
