import 'package:flutter/material.dart';
import 'package:p12_basic_widgets/config/palette.dart';
import 'package:p12_basic_widgets/features/plant_alarm/application/alarm_notifier.dart';
import 'package:p12_basic_widgets/features/plant_smoke/application/smoke_notifier.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  late bool isAlarmActive;
  late bool isSmokeActive;

  @override
  void initState() {
    super.initState();

    isAlarmActive =
        Provider.of<AlarmNotifier>(context, listen: false).isAlarmActive;

    isSmokeActive =
        Provider.of<SmokeNotifier>(context, listen: false).isSmokeActive;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<AlarmNotifier, SmokeNotifier>(
      builder: (BuildContext context, AlarmNotifier alarmProvider,
          SmokeNotifier smokeProvider, Widget? child) {
        return BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          showSelectedLabels: false,
          unselectedIconTheme: const IconThemeData(color: dutyUnselectedGrey),
          backgroundColor: smokeProvider.isSmokeActive
              ? dutyBgYellow
              : (alarmProvider.isAlarmActive ? dutyBgRed : dutyWhite),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.map_outlined),
              label: "map",
              backgroundColor: smokeProvider.isSmokeActive
                  ? dutyBgYellow
                  : (alarmProvider.isAlarmActive ? dutyBgRed : dutyWhite),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.warning_amber_outlined),
              activeIcon:
                  const Icon(Icons.warning_amber_outlined, color: dutyYellow),
              label: "smoke",
              backgroundColor: smokeProvider.isSmokeActive
                  ? dutyBgYellow
                  : (alarmProvider.isAlarmActive ? dutyBgRed : dutyWhite),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.crisis_alert,
              ),
              activeIcon: const Icon(
                Icons.crisis_alert,
                color: dutyRed,
              ),
              label: "alarm",
              backgroundColor: smokeProvider.isSmokeActive
                  ? dutyBgYellow
                  : (alarmProvider.isAlarmActive ? dutyBgRed : dutyWhite),
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: "settings"),
          ],
          currentIndex: widget.selectedIndex,
          onTap: widget.onItemTapped,
        );
      },
    );
  }
}
