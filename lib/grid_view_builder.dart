import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridv_view.dart';
import 'package:flutter_application_1/image_recieve.dart';
import 'package:flutter_application_1/itermclass.dart';

class GridBuilder extends StatelessWidget {
  const GridBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0),
        itemCount: info.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ItermCard(
              product: info[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ImagePic(
                            product: info[index],
                          ))),
            ));
  }
}
