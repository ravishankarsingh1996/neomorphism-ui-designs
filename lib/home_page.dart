import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/widgets/circular_icon_button.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_collection_card.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_product_card.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_rectangles.dart';

import 'constants/colors.dart';
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
    'Dress Table',
    'Dressers',
    'Mirrors',
    'Mattresses',
    'Benches',
    'Desks',
    'Storage cabinets',
    'Bookcases',
    'Sideboards',
    'Accent chests',
    'Accent tables',
    'End tables',

  ];
  List<Product> product = [
    Product(
        imageUrl:
            'https://image.freepik.com/free-photo/hotel-interior_144627-27370.jpg',
        category: 'Standing',
        productName: 'Table Lamp',
      isFav: true,
      price: '\$199'
    ),
    Product(
        imageUrl:
            'https://image.freepik.com/free-vector/lamp-with-grunge-texture_23-2147499247.jpg',
        category: 'Hanging',
        productName: 'Hanging Lamp',
        isFav: false,
        price: '\$99'
    ),
    Product(
        imageUrl:
            'https://image.freepik.com/free-vector/vintage-realistic-wall-electric-lamp_99660-147.jpg',
        category: 'Hanging',
        productName: 'Wall Lamp',
        isFav: true,
        price: '\$299'
    ),
    Product(
        imageUrl:
            'https://images.unsplash.com/photo-1526308182272-d2fe5e5947d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
        category: 'Table',
        productName: 'Dinning Table',
        isFav: true,
        price: '\$1099'
    ),
    Product(
        imageUrl:
            'https://images.unsplash.com/photo-1584198541667-f790d4f62742?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        category: 'Sofa',
        productName: 'Sofa',
        isFav: true,
        price: '\$499'
    ),
    Product(
        imageUrl:
            'https://images.unsplash.com/photo-1571283600721-e0e5d851fd17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
        category: 'Chair',
        productName: 'Plastic Light Chair',
        isFav: true,
        price: '\$79'
    ),
    Product(
        imageUrl:
            'https://images.unsplash.com/photo-1503602642458-232111445657?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
        category: 'Stool',
        productName: 'Wooden Stool',
        isFav: false,
        price: '\$69'
    ),
    Product(
        imageUrl:
            'https://images.unsplash.com/photo-1449247709967-d4461a6a6103?ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80',
        category: 'Table',
        productName: 'Work Table',
        isFav: true,
        price: '\$159'
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Header
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircularIconButton(icon: Icons.menu),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CircularIconButton(icon: Icons.search),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Stack
                      Container(
                        height: 500,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 60,
                                color: Colors.transparent,
                                child: ListView.builder(
                                  itemCount: categoryList.length,
                                  itemBuilder: (context, position) {
                                    if (position == 0) {
                                      return RoundEdgeRectangleButton(
                                        icon: Icons.settings,
                                      );
                                    }
                                    return RoundEdgeRectangleButton(
                                      text: categoryList[position],
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 10,
                              child: Text(
                                'MOON Lamps',
                                style: TextStyle(
                                    color: textBold,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 110,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 370,
                                width: double.infinity,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return RoundEdgeProductCard(
                                        product: product[index]);
                                  },
                                  itemCount: product.length,
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // List
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Padding(
                           padding:
                           const EdgeInsets.all(10),
                           child: Text(
                             'Collections',
                             style:
                             TextStyle(color: textBold, fontSize: 20, fontWeight: FontWeight.bold),
                           ),
                         ),
                         Padding(
                           padding:
                           const EdgeInsets.all(10),
                           child: Text(
                             'View All',
                             style:
                             TextStyle(color: textLight, fontSize: 16, fontWeight: FontWeight.bold),
                           ),
                         ),
                       ],
                     ),
                      Container(
                        constraints: BoxConstraints(
                            minHeight: 10, maxHeight: double.maxFinite),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return RoundEdgeCollectionCard(
                                product: product[index]);
                          },
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: product.length,
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
