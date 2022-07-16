import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/page_route.dart';
import 'package:flutter_application_1/car_shooping.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Cartdata>(create: (BuildContext context) => Cartdata())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.brown,
          unselectedWidgetColor: Colors.brown,
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
        routes: {
          mycart: (context) => const CartShopping(),
        },
      ),
    );
  }}
