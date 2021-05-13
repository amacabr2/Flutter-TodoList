import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_todo_list/screens/AuthScreen.dart';
import 'package:flutter_todo_list/screens/RouteNotFoundScreen.dart';
import 'package:flutter_todo_list/screens/TodoScreen.dart';
import 'package:flutter_todo_list/screens/TodosScreen.dart';

class AppRoutes {
  static final routeNotFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        debugPrint("Route not found.");

        return RouteNotFoundScreen();
      });

  static final authRoute = AppRoute(
      '/auth',
      Handler(
          handlerFunc: (BuildContext context, Map<String, List<String>> params) => AuthScreen(),
      )
  );

  static final todosRoute = AppRoute(
    '/todos',
    Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) => TodosScreen(),
    ),
  );

  static final todoRoute = AppRoute(
    '/todo',
    Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          // final String contactId = params["id"][0];

          return TodoScreen();
        }),
  );

  /// Primitive function to get one param detail route (i.e. id).
  static String getDetailRoute(String parentRoute, String id) {
    return "$parentRoute/$id";
  }

  static final List<AppRoute> routes = [
    authRoute,
    todoRoute,
    todosRoute,
  ];
}
