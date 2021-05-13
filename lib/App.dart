import 'package:flutter/material.dart';
import 'package:flutter_todo_list/routing/AppRoutes.dart';
import 'package:flutter_todo_list/routing/AppRouter.dart';
import 'package:flutter_todo_list/screens/AuthScreen.dart';


class App extends StatelessWidget {
  AppRouter appRouter = AppRouter(
    routes: AppRoutes.routes,
    notFoundHandler: AppRoutes.routeNotFoundHandler,
  );

  @override
  Widget build(BuildContext context) {
    appRouter.setupRoutes();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AuthScreen(title: 'Todos'),
    );
  }
}