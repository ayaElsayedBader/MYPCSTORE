import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '../../core/manger/color_app.dart';

class NotificationService {
  static void initAwesomeNotifications() {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: ColorApp.kBlue,
          ledColor: Colors.white,
        )
      ],
      debug: true,
    );
  }

  static void allowNotifications() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  static void triggerNotification({
    required String title,
    required String body,
  }) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: Random().nextInt(1000),
        channelKey: 'basic_channel',
        title: title,
        body: body,
      ),
    );
  }
}
