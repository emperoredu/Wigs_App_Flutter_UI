import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'car_shooping.dart';

// ignore: must_be_immutable

class BottonNavi extends StatefulWidget {
  const BottonNavi({Key? key}) : super(key: key);

  @override
  State<BottonNavi> createState() => _BottonNaviState();
}

class _BottonNaviState extends State<BottonNavi> {
  int indexr = 0;
  @override
  Widget build(BuildContext context) {
    void _onclick(index) {
      setState(() {
        indexr = index;
        switch (indexr) {
          case 0:
            index= 0; 
            break;

          case 1:
            index = 1;
            break;
          case 2:
            index = 2;
               Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartShopping()));

          
        }
      });
    }

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.brown, size: 30),
        selectedLabelStyle: TextStyle(fontFamily: FontWeight.bold.toString()),
        backgroundColor: Colors.white,
        currentIndex: indexr,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: Colors.brown,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.user,
                color: Colors.brown,
              ),
              label: 'User-profile'),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.cartArrowDown,
              color: Colors.brown,
            ),
            label: 'Cart',
          ),
        ],
        selectedItemColor: Colors.brown,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        onTap: _onclick,
      ),
    );
  }
}
