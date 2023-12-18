import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/screen/notification/s_notification.dart';

class TossAppbar extends StatefulWidget {

  static const double appBarHeight = 60;

  const TossAppbar({super.key});

  @override
  State<TossAppbar> createState() => _TossAppbarState();
}

class _TossAppbarState extends State<TossAppbar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppbar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          width10,
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          emptyExpanded,
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          width10,
          Tap(
            onTap: (){
              setState(() {
                //알림 화면
                Nav.push(NotificationScreen());
              });
            },
            child: Stack(
              children: [
                Image.asset(
                  "$basePath/icon/notification.png",
                  height: 30,
                ),
                if (_showRedDot) Positioned.fill(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ))
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
