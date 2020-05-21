import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/utils/app_utils.dart';
import 'package:neomorphism_ui_designs/widgets/circular_icon_button.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_collection_card.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_product_card.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_rectangles.dart';

import '../constants/colors.dart';
import '../model/product.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List categoryList = [
    'All',
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
  List<Product> product = [];

  @override
  void initState() {
    super.initState();
    ApUtils utils = ApUtils();
    product = utils.getProductsList();
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
                                height: 360,
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
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Collections',
                              style: TextStyle(
                                  color: textBold,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  color: textLight,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
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
