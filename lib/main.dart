import 'package:flutter/material.dart';
import 'package:p12_basic_widgets/app.dart';
import 'package:p12_basic_widgets/features/plant_alarm/application/alarm_provider.dart';
import 'package:p12_basic_widgets/features/plant_smoke/application/smoke_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AlarmProvider()),
        ChangeNotifierProvider(create: (context) => SmokeProvider()),
      ],
      child: const App(),
    ),
  );
}
