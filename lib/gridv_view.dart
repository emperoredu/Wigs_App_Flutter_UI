import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'itermclass.dart';

class ItermCard extends StatelessWidget {
  const ItermCard({Key? key, required this.product, required this.press, 
  //required this.press
  }

  )
      : super(key: key);
  final Data product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(product.image.toString()),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // const  SizedBox(height: 10,),
                Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      product.text.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        fontSize: 13,
                      ),
                    )),
                // const  SizedBox(width: 5,),

                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.heart,
                    semanticLabel: "Love's Log",
                    size: 20,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (var i = 1; i <= 5; i++) ...[
                  const FaIcon(
                    FontAwesomeIcons.star,
                    size: 10,
                    color: Colors.brown,
                  ),
                ],
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  product.cash.toString(),
                  style: const TextStyle(color: Colors.brown),
                ),
              ],
            )
          ],
        ),
      ),
    );
    
  }
}
