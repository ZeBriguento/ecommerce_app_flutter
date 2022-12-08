import 'package:flutter/material.dart';
import 'package:inicioflutter/app_controller.dart';
import 'package:inicioflutter/home_page.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.teal,
            brightness: AppController.instance.darkTheme ? Brightness.dark : Brightness.light,
          ),
         home: HomePage(),
        );
      },
    );
  }
}
