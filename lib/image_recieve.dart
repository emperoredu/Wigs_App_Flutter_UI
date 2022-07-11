import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

import 'itermclass.dart';

class ImagePic extends StatelessWidget {
  const ImagePic({Key? key, required this.product}) : super(key: key);
  final Data product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(193, 212, 205, 127),
      body: MyBody(products:product),
    );
  }
}
