import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/constants/colors.dart';
import 'package:neomorphism_ui_designs/model/category.dart';
import 'package:rxdart/rxdart.dart';

class RoundEdgeCollectionCard extends StatefulWidget {
  final Product product;

  const RoundEdgeCollectionCard({Key key, this.product}) : super(key: key);

  @override
  _RoundEdgeCollectionCardState createState() =>
      _RoundEdgeCollectionCardState();
}

class _RoundEdgeCollectionCardState extends State<RoundEdgeCollectionCard> {
  StreamController _pressedController = BehaviorSubject<bool>();

  bool isPressed = false;

  @override
  void dispose() {
    _pressedController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
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
                  color: Color.fromRGBO(108, 19, 59, 1),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.network(
                            widget.product.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 5),
                              child: Text(
                                '${widget.product.category}',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 5),
                              child: Text(
                                '${widget.product.productName}',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 5),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: shadowOne,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: shadowOne,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: shadowOne,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: shadowOne,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: shadowOne,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 5),
                              child: Text(
                                '${widget.product.price}',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
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
                        child: Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color.fromRGBO(108, 19, 59, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
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
                          child: Icon(
                            Icons.arrow_forward,
                            color: shadowOne,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
