import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neomorphism_ui_designs/pages/home_page.dart';
import 'package:neomorphism_ui_designs/size_config.dart';
import 'package:neomorphism_ui_designs/widgets/circular_icon_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        Responsive().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Neomorphism',
          home: MyHomePage(),
        );
      });
    });
  }
}


