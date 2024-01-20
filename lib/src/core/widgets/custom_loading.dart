import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pc/src/core/extension/extension.dart';

import '../../features/edit_profile/presentation/view/screen/edit_profile_screen.dart';
import '../../features/register/domain/entities/model/register_model.dart';
import '../manger/size_app.dart';
import 'loading_widget.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.userModel});

  final UserModel userModel;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late Timer timer;

  navigator() {
    context.push(ProfileScreen(
      userModel: widget.userModel,
    ));
  }

  getTimer() {
    timer = Timer(Duration(seconds: SizeApp.size3.toInt()), navigator);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingWidget();
  }
}
