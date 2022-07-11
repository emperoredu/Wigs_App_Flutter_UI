import 'package:flutter/material.dart';

class NoteView extends StatefulWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
           Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      prefixIcon: const Icon(Icons.search),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 6),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(60.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 35,
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.brown),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0)))),
                        child: const Text(
                          'SHOP NOW',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
             
             
             
              ],
            
            
            ),
             Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Container(
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  const SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'assets/images/bag.png',
                    width: 150,
                    height: 180,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      """GET UP TO 25% OFF \n EVERY PURCHASE \n           TODAY""",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

            
        ],

        
      ),
    );
  }
}
