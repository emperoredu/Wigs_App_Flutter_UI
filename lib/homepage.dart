import 'package:flutter/material.dart';

import 'package:flutter_application_1/bottomn_av.dart';
import 'package:flutter_application_1/grid_view_builder.dart';
import 'package:flutter_application_1/note_views.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(193, 212, 205, 127),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: Column(
            children: const [
              Text(
                'Hello NKem!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome Back ',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          centerTitle: true,
          elevation: 0,
          actions:  [
             Padding(
               padding: const EdgeInsets.all(3.0),
               child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                 child: CircleAvatar(
                
                  child: Image.asset('assets/images/Image.jpg'),
               
                 ),
               ),
             ),
             const SizedBox(width: 10,)
            
          ],
        ),


      ),

       drawer: Drawer(
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
               decoration: const BoxDecoration(
                   color: Colors.cyan,
                   image: DecorationImage(
                       image: AssetImage(
                         'assets/images/Image.jpg',
                       ),
                       fit: BoxFit.fitWidth)),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: const [
                   Text(
                     'Profile Name',
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 18,
                         fontWeight: FontWeight.bold),
                   ),
                   Text(
                     'email@example.com',
                     style: TextStyle(color: Colors.white, fontSize: 11),
                   )
                 ],
               ),
             ),
             const ListTile(
               leading: FaIcon(FontAwesomeIcons.locationArrow),
             ),
           ],
         ),
       ),
       body:Column(
        children: const [
         NoteView(),
         Expanded(child: GridBuilder())
         
        ],
       ),
        bottomNavigationBar: const BottonNavi(),
    );
  }
}
