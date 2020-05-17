import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../size_config.dart';

class CircularIconButton extends StatefulWidget {
  final IconData icon;

  const CircularIconButton({Key key, this.icon}) : super(key: key);

  @override
  _CircularIconButtonState createState() => _CircularIconButtonState();
}

class _CircularIconButtonState extends State<CircularIconButton> {
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
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(108, 19, 59, 1),
                  boxShadow: [
                    new BoxShadow(
                      color: snapshot.data ? shadowTwo : shadowOne,
                      offset: Offset(2.0, 2.0),
//                          spreadRadius: -5.0,
                      blurRadius: 2.0,
                    ),
                    new BoxShadow(
                      color: snapshot.data ? shadowOne : shadowTwo,
                      offset: Offset(-2.0, -2.0),
//                          spreadRadius: -5.0,
                      blurRadius: 2.0,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(108, 19, 59, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Icon(
                      widget.icon,
                      size: 5.4 * Responsive.imageSizeMultiplier,
                      color: Colors.white38,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
