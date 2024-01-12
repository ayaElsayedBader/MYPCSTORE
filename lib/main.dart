
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pc/src/config/services/notification_service.dart';
import 'package:pc/src/core/Di/service_locator.dart';
import 'package:pc/src/core/controller/bloc_observer/observer.dart';
import 'package:pc/src/core/helper/cache_helper.dart';

import 'main_lap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService.initAwesomeNotifications();
  initServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const MyLappyApp());
  await CacheHelper.init();

}
