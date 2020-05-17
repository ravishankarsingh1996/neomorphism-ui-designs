import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/widgets/circular_icon_button.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_rectangles.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List categoryList = ['Bed', 'Sofa', 'Lamps', 'Table', 'Locker', 'Chair', 'Dress Table'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(117,22,64, 1) ,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 20,
            child: Row(
              children: <Widget>[
                CircularIconButton(icon: Icons.menu),
              ],
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Row(
              children: <Widget>[
                CircularIconButton(icon: Icons.search),
              ],
            ),
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              color: Colors.transparent,
              child: ListView.builder(
                itemCount: categoryList.length,
                itemBuilder: (context, position){
                  if(position == 0 ){
                    return RoundEdgeRectangleButton(icon: Icons.settings,);
                  }
                  return RoundEdgeRectangleButton(text: categoryList[position],);
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}