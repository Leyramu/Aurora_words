import 'package:fluro/fluro.dart';

import './route_handlers.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String roomDetail = '/room/:roomId';

  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(register, handler: registerHandler);
    router.define(roomDetail, handler: roomDetailHandler);
    router.notFoundHandler = notFoundHandler;
  }
}
