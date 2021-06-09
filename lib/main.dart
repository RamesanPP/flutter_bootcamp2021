import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color(0xff050a30),
          accentColor: const Color(0xff99582a)),
      home: HomePage(),
    );
  }
}
