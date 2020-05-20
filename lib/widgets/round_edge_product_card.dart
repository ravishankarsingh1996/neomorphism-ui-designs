import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/constants/colors.dart';
import 'package:neomorphism_ui_designs/model/category.dart';
import 'package:neomorphism_ui_designs/size_config.dart';
import 'package:rxdart/rxdart.dart';

class RoundEdgeProductCard extends StatefulWidget {
  final Product product;

  const RoundEdgeProductCard({Key key, this.product}) : super(key: key);

  @override
  _RoundEdgeProductCardState createState() => _RoundEdgeProductCardState();
}

class _RoundEdgeProductCardState extends State<RoundEdgeProductCard> {
  StreamController _pressedController = BehaviorSubject<bool>();
  bool isPressed = false;

  @override
  void dispose() {
    _pressedController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onPanEnd: (_) {
        isPressed = !isPressed;
        _pressedController.sink.add(isPressed);
      },
      onPanDown: (_) {
        isPressed = !isPressed;
        _pressedController.sink.add(isPressed);
      },
      onTapUp: (_) {
        isPressed = !isPressed;
        _pressedController.sink.add(isPressed);
      },
      child: StreamBuilder<Object>(
          stream: _pressedController.stream,
          initialData: isPressed,
          builder: (context, snapshot) {
            return Container(
//              margin: EdgeInsets.only(right: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: appColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    new BoxShadow(
                      color: snapshot.data ? shadowTwo : shadowOne,
                      offset: Offset(3.0, 3.0),
//                          spreadRadius: -5.0,
                      blurRadius: 3.0,
                    ),
                    new BoxShadow(
                      color: snapshot.data ? shadowOne : shadowTwo,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                                width: 220,
                                height: 280,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.network(
                                    widget.product.imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Positioned(
                              top: 5,
                              left: 5,
                              child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(1.0, 1.0),
//                          spreadRadius: -5.0,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    color: widget.product.isFav ? Colors.red : Colors.white,
                                  )),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            '${widget.product.category}',
                            style:
                                TextStyle(color: textLight, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            '${widget.product.productName}',
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
          }),
    );
  }
}
