import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:toss_clone/screen/notification/w_notification_item.dart';

import '../../common/common.dart';
import 'vo/vo_notification.dart';

class NotificationDialog extends DialogWidget {
  final List<TossNotification> notification;

  NotificationDialog(this.notification, {super.key, super.animation = NavAni.Bottom});

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notification.map(
            (element) => NotificationItemWidget(
              onTap: () {
                widget.hide(context);
                // Nav.pop(context);
              },
              notification: element,
            ),
          )
        ],
      ),
    );
  }
}
