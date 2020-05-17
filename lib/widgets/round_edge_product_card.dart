import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/model/category.dart';
import 'package:neomorphism_ui_designs/size_config.dart';
import 'package:rxdart/rxdart.dart';

class RoundEdgeProductCard extends StatefulWidget {
  final Category product;

  const RoundEdgeProductCard({Key key, this.product}) : super(key: key);

  @override
  _RoundEdgeProductCardState createState() => _RoundEdgeProductCardState();
}

class _RoundEdgeProductCardState extends State<RoundEdgeProductCard> {
  StreamController _pressedController = BehaviorSubject<bool>();
  Color shadowOne = Color.fromRGBO(68, 10, 36, 1);
  Color shadowTwo = Color.fromRGBO(136, 26, 74, 1);
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
                  color: Color.fromRGBO(108, 19, 59, 1),
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
                    color: Color.fromRGBO(108, 19, 59, 1),
                  ),
                  child: Container(
//                    padding: const EdgeInsets.all(10.0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                                width: 150,
                                height: 230,
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
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(3.0, 3.0),
//                          spreadRadius: -5.0,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
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
                                TextStyle(color: Colors.white60, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Text(
                            '${widget.product.productName}',
                            style: TextStyle(
                                color: Colors.white70,
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
