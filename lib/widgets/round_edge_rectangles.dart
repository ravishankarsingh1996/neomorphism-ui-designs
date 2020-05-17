import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../size_config.dart';

class RoundEdgeRectangleButton extends StatefulWidget {
  final IconData icon;
  final String text;

  const RoundEdgeRectangleButton({Key key, this.icon, this.text}) : super(key: key);
  @override
  _RoundEdgeRectangleButtonState createState() => _RoundEdgeRectangleButtonState();
}

class _RoundEdgeRectangleButtonState extends State<RoundEdgeRectangleButton> {

  StreamController _pressedController =  BehaviorSubject<bool>();
  Color shadowOne = Color.fromRGBO(68,10,36, 1);
  Color shadowTwo = Color.fromRGBO(136,26,74, 1);
  bool isPressed = false;

  @override
  void dispose() {
    _pressedController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      onPanEnd: (_){
        isPressed = !isPressed;
        _pressedController.sink.add(isPressed);
      },
      onPanDown: (_){
        isPressed = !isPressed;
        _pressedController.sink.add(isPressed);
      },
      onTapUp: (_){
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
                  color: Color.fromRGBO(108,19,59, 1),
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
                    color: Color.fromRGBO(108,19,59, 1) ,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: widget.icon == null ? Text(widget.text, style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.bold),): Icon(
                      widget.icon,
                      size: 5.4 * Responsive.imageSizeMultiplier,
                      color: Colors.white38,
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
