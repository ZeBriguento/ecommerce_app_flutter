import 'package:flutter/material.dart';
import 'package:inicioflutter/constants.dart';
import 'package:inicioflutter/detais/components/product_details.dart';
import 'package:inicioflutter/home/components/categories.dart';
import 'package:inicioflutter/home/components/item_card.dart';
import 'package:inicioflutter/models/Product.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin, vertical: kDefaultPaddin/4),
          child: Text(
            "Destaques",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.grey.shade700),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin),
            itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetails(product: products[index]),
                    ))),
          ),
        ))
      ],
    );
  }
}
