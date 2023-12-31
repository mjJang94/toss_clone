import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/common/dart/extension/datetime_extension.dart';
import 'package:toss_clone/common/data/preference/prefs.dart';
import 'package:toss_clone/common/widget/w_big_button.dart';
import 'package:toss_clone/screen/main/tab/stock/setting/d_number.dart';
import 'package:toss_clone/screen/opensource/s_opensource.dart';

import 'w_switch_menu.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          //switch
          Obx(() => SwitchMenu('푸시 설정', Prefs.isPushOnRx.get(), onTap: (isOn) {
                Prefs.isPushOnRx.set(isOn);
              })),
          Obx(() => Slider(
              value: Prefs.sliderPosition.get(),
              onChanged: (value) {
                Prefs.sliderPosition.set(value);
              })),
          Obx(
            () => BigButton(
                '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}',
                onTap: () async {
              final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days));
              if (date != null) {
                Prefs.birthday.set(date);
              }
            }),
          ),
          Obx(
            () => BigButton('저장된 숫자 ${Prefs.number.get()}', onTap: () async {
              final number = await NumberDialog().show();
              if (number != null) {
                Prefs.number.set(number);
              }
            }),
          ),
          BigButton('오픈소스 화면', onTap: () async {
            Nav.push(const OpensourceScreen());
          }),
        ],
      ),
    );
  }
}
