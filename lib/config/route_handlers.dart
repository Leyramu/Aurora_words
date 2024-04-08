import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2/components/pages/not_found/not_found.dart';
import 'package:flutter_2/components/pages/room_detail/index.dart';

import '../components/pages/home/index.dart';
import '../components/pages/login/login.dart';
import '../components/pages/register/register.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});

Handler loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});

Handler registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const RegisterPage();
});

Handler roomDetailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RoomDetailPage(roomId: params['roomId']![0]);
});

Handler notFoundHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const NotFoundPage();
});
