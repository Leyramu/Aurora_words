import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2/pages/not_found.dart';
import 'package:flutter_2/pages/room_detail/index.dart';

import '../pages/home/index.dart';
import '../pages/login.dart';
import '../pages/register.dart';

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
