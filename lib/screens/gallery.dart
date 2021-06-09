import 'package:flutter/material.dart';

import 'home.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color(0xff050a30),
          accentColor: const Color(0xff99582a)),
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Gallery'),
          backgroundColor: Color(0xff99582a),
        ),
        body: Center(
          child: Container(
            // height: 200,
            child: GridView.builder(
              padding: EdgeInsets.all(5),
              itemCount: 14,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                  crossAxisCount: 2),
              itemBuilder: (ctx, index) => Container(
                child: Image.network(
                  gallery[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
