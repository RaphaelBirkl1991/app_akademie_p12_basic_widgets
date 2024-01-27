import 'package:p12_basic_widgets/domain/enums/enum_app_state.dart';

class Application {
  AppState appState;

  Application(this.appState);

  void unlockApp() => appState = AppState.unlocked;

  void lockApp() => appState = AppState.locked;
  void setAlarm() => appState = AppState.alarmActive;
  void setSmokeSign() => appState = AppState.smokeActive;
}
