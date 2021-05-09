import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_todo_list/routing/AppRouter.dart';

class PopButton extends StatelessWidget {
  final AppRoute appRoute;

  PopButton({@required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return Navigator.of(context).canPop()
        ? IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () => AppRouter.router.pop(context),
          )
        : IconButton(
            icon: Icon(Icons.home),
            onPressed: () => AppRouter.router.navigateTo(
              context,
              appRoute.route,
              replace: true,
              clearStack: true,
            ),
          );
  }



}