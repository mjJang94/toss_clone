import 'package:flutter/material.dart';
import 'package:toss_clone/screen/notification/notification_dummy.dart';

import 'd_notification.dart';
import 'w_notification_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text("알림"),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                onTap: () {
                  NotificationDialog([notificationDummies[0], notificationDummies[1]]).show();
                },
              ),
              childCount: notificationDummies.length,
            )),
          ],
        ),
      ),
    );
  }
}
