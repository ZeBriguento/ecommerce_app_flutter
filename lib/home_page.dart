import 'package:flutter/material.dart';
import 'package:inicioflutter/app_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inicioflutter/constants.dart';
import 'package:inicioflutter/home/components/body.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compras'),
        backgroundColor: Colors.grey,
        actions: [
        CustomSwitch(),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              // By default our  icon color is white
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              // By default our  icon color is white
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,

      ),
      body: Body()
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.darkTheme,
        onChanged: (value) {

          AppController.instance.changeTheme();
        });
  }
}

