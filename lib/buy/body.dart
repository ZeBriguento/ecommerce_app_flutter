import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inicioflutter/constants.dart';
class BuyForm extends StatefulWidget {
  const BuyForm({Key? key}) : super(key: key);

  @override
  State<BuyForm> createState() => _BuyFormState();
}

class _BuyFormState extends State<BuyForm> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Finalizar Compra'),
          backgroundColor: Colors.teal.shade400,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
                    color: Colors.teal.shade400,

                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "assets/icons/app_logo.png",
                              height: 90,
                              width: 90,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Volte sempre!",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color(0xffF5591F),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.teal.shade400,
                      ),
                      hintText: "Nome Completo",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color(0xffF5591F),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Colors.teal.shade400,
                      ),
                      hintText: "Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color(0xffF5591F),
                    decoration: InputDecoration(
                      focusColor: Color(0xffF5591F),
                      icon: Icon(
                        Icons.phone,
                        color: Colors.teal.shade400,
                      ),
                      hintText: "Telemóvel",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here.
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.teal.shade400,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: Text(
                      "COMPRAR",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

              ],
            )
        )
    );;
  }
}
