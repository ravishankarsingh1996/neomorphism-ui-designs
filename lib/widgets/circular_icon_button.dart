import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neomorphism_ui_designs/constants/colors.dart';
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
                  color: appColor,
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
                    color: appColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Icon(
                      widget.icon,
                      size: 20,
                      color: iconColor,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
