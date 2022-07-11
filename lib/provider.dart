import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/itermclass.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cartdata extends ChangeNotifier {
  addToCart() async {
    List data = [];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('details', '34');
  }
}

class Cartdateils {
  String? image;
  int? price;
  String? name;

  Cartdateils({this.image, this.price, this.name});

  Cartdateils.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    price = json['price'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['price'] = price;
    data['name'] = name;
    return data;
  }
}
