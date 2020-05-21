import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/constants/colors.dart';
import 'package:neomorphism_ui_designs/model/product.dart';
import 'package:neomorphism_ui_designs/widgets/circular_icon_button.dart';
import 'package:neomorphism_ui_designs/widgets/product_feature_widget.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_collection_card.dart';
import 'package:neomorphism_ui_designs/widgets/round_edge_product_card.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({Key key, this.product}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColor,
      body: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
            child: Container(
              height: screenSize.height * 0.5,
              decoration: BoxDecoration(
              ),
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: widget.product.productName,
                    child: Image.network(
                      widget.product.posterImageUrl,
                      height: screenSize.height * 0.5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: screenSize.height * 0.5,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.black38.withOpacity(0.5),
                            Colors.transparent,
                            Colors.black38.withOpacity(0.7)
                          ])),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    right: 10,
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black38,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.black38,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  RoundEdgeCollectionCard(
                    product: widget.product,
                    isDetail: true,
                  ),
                  Container(
                    height: 260,
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ProductFeatureWidget(
                            productFeatures:
                                widget.product.productFeatures[index]);
                      },
                      itemCount: widget.product.productFeatures.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
