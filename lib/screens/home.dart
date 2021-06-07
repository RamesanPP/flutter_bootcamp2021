import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/screens/widgets/topBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: TopBar()),
    );
  }
}
