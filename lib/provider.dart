import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:shared_preferences/shared_preferences.dart';

// provider
class Cartdata extends ChangeNotifier {
  List empty = [];
  List<Cartdateils>? _getiterms = [];
  List<Cartdateils>? get getAllItems => _getiterms;

  getitermdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List temp = await jsonDecode(prefs.getString('store') ?? empty.toString());

    _getiterms = temp.map((e) => Cartdateils.fromJson(e)).toList();
  }

  Future<void> addToCart({image, price, name}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // map that store the data
    var data = {'image': image, 'price': price, 'name': name};
    //Cartdateils dateils = Cartdateils();
    //dateils.image = image;
   //print(data);
    //getting  the data stored in the itemdata using the key 'store' and checking if the itemdata is empty
    //if it is it print an print the empty list and add the new data into the itemdata
    List dataIterms =
        await jsonDecode(prefs.getString('store') ?? """$empty""");
    //dataIterms.add(data);
    // List dataIterms = [];
    dataIterms.add(data);
    print(dataIterms);
    //storing the data item recived to the dataitem through the prefs
    prefs.setString('store', jsonEncode(dataIterms));
    getitermdata();
    notifyListeners();
  }
}

class Cartdateils {
  String? image;
  String? price;
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
