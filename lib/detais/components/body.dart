import 'package:flutter/material.dart';
import 'package:inicioflutter/constants.dart';
import 'package:inicioflutter/detais/components/add_to_cart.dart';
import 'package:inicioflutter/detais/components/color_and_size.dart';
import 'package:inicioflutter/detais/components/counter_with_fav_btn.dart';
import 'package:inicioflutter/detais/components/description.dart';
import 'package:inicioflutter/detais/components/product_title_with_image.dart';
import 'package:inicioflutter/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.27),
                  padding: EdgeInsets.only(
                    top: size.height * 0.10,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)


                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

