import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/constants/colors.dart';
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
                    color: appColor ,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: widget.icon == null ? Text(widget.text, style: TextStyle(color: textBold, fontSize: 16, fontWeight: FontWeight.bold),): Icon(
                      widget.icon,
                      size: 20,
                      color: iconColor,
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
