import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/widgets/circular_icon_button.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_product_card.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_rectangles.dart';

import 'model/category.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List categoryList = [
    'Bed',
    'Sofa',
    'Lamps',
    'Table',
    'Locker',
    'Chair',
    'Dress Table'
  ];
  List<Category> product = [
    Category(
        imageUrl: 'https://image.freepik.com/free-photo/hotel-interior_144627-27370.jpg',
        category: 'Standing',
        productName: 'Table Lamp'),
    Category(
        imageUrl: 'https://image.freepik.com/free-vector/lamp-with-grunge-texture_23-2147499247.jpg',
        category: 'Hanging',
        productName: 'Hanging Lamp'),
    Category(
        imageUrl: 'https://image.freepik.com/free-vector/vintage-realistic-wall-electric-lamp_99660-147.jpg',
        category: 'Hanging',
        productName: 'Wall Lamp'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(117, 22, 64, 1),
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
          height: 60,
          color: Colors.transparent,
          child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, position) {
              if (position == 0) {
                return RoundEdgeRectangleButton(icon: Icons.settings,);
              }
              return RoundEdgeRectangleButton(text: categoryList[position],);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      Positioned(
        top: 220,
        left: 10,
        child: Text(
          'MOON Lamps',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
        Positioned(
          top: 250,
          left: 0,
          right: 0,
          child: Container(
            height: 320,
            width: double.infinity,
            child: ListView.builder(itemBuilder: (context, index) {
              return RoundEdgeProductCard(product: product[index]);
            },
              itemCount: product.length,
              scrollDirection: Axis.horizontal,),
          ),
        ),
        ],
      ),
    );
  }
}