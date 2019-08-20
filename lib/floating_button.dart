import 'package:flutter/material.dart';
class floating_button extends StatefulWidget {

  floating_button_state createState()=>floating_button_state();
}

class floating_button_state extends State<floating_button>{

  _showDrawer() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView(
                children: [
                  Text('afds'),
                  Text('afds2'),
                  Text('afds3'),
                  Text('afds4'),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: null,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      child: ClipOval(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 5,blurRadius: 5,offset: Offset(5.0, 5.0))]),
            child: InkWell(
              //onTap: (){Navigator.pushNamed(context, '/filter');},
              onTap: (){_showDrawer();},
                child: Image.asset("assets/filters2.png",scale: 10,)),
          ),
        ),
      ),backgroundColor: Color(0xffffff),);
  }



}