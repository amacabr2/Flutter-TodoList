import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_todo_list/routing/AppRoutes.dart';
import 'package:flutter_todo_list/routing/AppRouter.dart';
import 'package:flutter_todo_list/screens/TodosScreen.dart';


class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  AppRouter appRouter = AppRouter(
    routes: AppRoutes.routes,
    notFoundHandler: AppRoutes.routeNotFoundHandler,
  );

  @override
  Widget build(BuildContext context) {
    appRouter.setupRoutes();

    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Todo list',
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            home: TodosScreen(title: 'Todos'),
          );
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: TodosScreen(title: 'Quizz'),
        );
      },
    );
  }
}