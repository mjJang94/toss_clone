import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/screen/main/tab/stock/setting/w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onTap;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        emptyExpanded,
        OsSwitch(value: isOn, onChanged: onTap),
      ],
    ).p20();
  }
}
