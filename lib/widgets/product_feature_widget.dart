import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/constants/colors.dart';
import 'package:neomorphism_ui_designs/model/product.dart';
import 'package:neomorphism_ui_designs/model/product_features.dart';

class ProductFeatureWidget extends StatelessWidget {
  final ProductFeatures productFeatures;

  const ProductFeatureWidget({Key key, this.productFeatures}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
//              margin: EdgeInsets.only(right: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: appColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
              color: shadowOne,
              offset: Offset(3.0, 3.0),
//                          spreadRadius: -5.0,
              blurRadius: 3.0,
            ),
            new BoxShadow(
              color: shadowTwo,
              offset: Offset(-2.0, -2.0),
//                          spreadRadius: -5.0,
              blurRadius: 3.0,
            ),
          ]),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
            color: appColor,
          ),
          child: Container(
//                    padding: const EdgeInsets.all(10.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: appColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        new BoxShadow(
                          color:  shadowOne,
                          offset: Offset(3.0, 3.0),
//                          spreadRadius: -5.0,
                          blurRadius: 3.0,
                        ),
                        new BoxShadow(
                          color: shadowTwo,
                          offset: Offset(-2.0, -2.0),
//                          spreadRadius: -5.0,
                          blurRadius: 3.0,
                        ),
                      ]),
                  child: Icon(
                    productFeatures.icon,
                    color: iconColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: Text(
                    '${productFeatures.title}',
                    style:
                    TextStyle(color: textLight, fontSize: 14),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: Text(
                    '${productFeatures.value}',
                    style: TextStyle(
                        color: textBold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
