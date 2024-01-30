import 'package:flutter/material.dart';
import 'package:p12_basic_widgets/common/mock_service.dart';
import 'package:p12_basic_widgets/config/app_theme.dart';
import 'package:p12_basic_widgets/features/infrastructure/presentation/main_app_screen.dart';
import 'package:p12_basic_widgets/features/set_smoke/data/database_set_smoke_repository.dart';
import 'package:p12_basic_widgets/features/set_smoke/data/mock/mock_set_smoke_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final mockService = MockService();

    DatabaseSetSmokeRepository databaseSetSmokeRepository =
        MockSetSmokeRepository(mockService);

/* 
DatabaseSetAlarmRepository databaseSetAlarmRepository =
        MockSetAlarmRepository(mockService);

 */

    return MaterialApp(
      theme: AppTheme.themeData,
      home: MainAppScreen(
        databaseSetSmokeRepository: databaseSetSmokeRepository,
      ),
    );
  }
}
