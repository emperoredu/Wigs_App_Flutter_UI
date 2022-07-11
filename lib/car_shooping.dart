import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomn_av.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartShopping extends StatefulWidget {
  const CartShopping({Key? key}) : super(key: key);

  @override
  State<CartShopping> createState() => _CartShoppingState();
}

class _CartShoppingState extends State<CartShopping> {
  int countitem = 20;
 late List<bool>_itemselected;
  int incrimentValue = 0;

  
  @override
  void initState() {
    _itemselected = List<bool>.filled(countitem, false, growable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(193, 212, 205, 127),
      appBar: AppBar(
        title: const Text(
          'Shopping',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: SizedBox(
          height: 30,
          width: 30,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(70)),
            ),
            child: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.brown,
            ),
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/Image.jpg',
            ),
            backgroundColor: Colors.white,
          )
        ],
        centerTitle: true,
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('assets/images/Image.jpg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Bone Stright',
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Bone Stright',
                                ),
                                Text(
                                  'Bone Stright',
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Checkbox(
                                  checkColor: Colors.white,
                                  value: _itemselected[index],
                                  // ignore: avoid_types_as_parameter_names
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _itemselected[index]= value!;
                                    });
                                  }),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60,
                                    height: 25,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            incrimentValue !=0 ? incrimentValue-- :incrimentValue;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 20,
                                        )),
                                  ),
                                  SizedBox(
                                      height: 20,
                                      width: 5,
                                      child: Text("$incrimentValue")),
                                  SizedBox(
                                    width: 30,
                                    height: 25,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            incrimentValue++;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 20,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          separatorBuilder: (context, i) => i % 1 == 0
              ? const Divider()
              : const Padding(
                  padding: EdgeInsets.all(10),
                ),
          itemCount:  countitem),
      bottomNavigationBar: const BottonNavi(),
    );
  }
}
