import 'package:flutter/material.dart';
import 'package:flutter_application_1/car_shooping.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'itermclass.dart';

class MyBody extends StatelessWidget {
  final Data products;
  const MyBody({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          products.image.toString(),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.arrowLeft,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.heart,
                  semanticLabel: "Love's Log",
                  size: 25,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "${products.text}",
                      style: const TextStyle(
                          color: Colors.brown, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "\$${products.cash}",
                      style: const TextStyle(
                          color: Colors.brown, fontWeight: FontWeight.bold),
                    ),
                  ),
                  for (var i = 1; i <= 5; i++) ...[
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.star,
                        size: 14,
                      ),
                    )
                  ],
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                """Let’s take the container example which has height 150 pixels 
                from before which is inside a Column widget. \n When you wrap 
                the container with a Flexible with a tight fit, t
            
            """),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Consumer<Cartdata>(
              builder: (context, cartdata, child) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      cartdata.addToCart(
                        image: products.image.toString(),
                        price: products.cash.toString(),
                        name: products.text.toString(),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown,
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartShopping()));
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.cartShopping,
                        size: 25,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
