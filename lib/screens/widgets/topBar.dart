import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        color: Colors.deepPurple,
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            CircleAvatar(),
            const SizedBox(
              width: 20,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Ramesan PP'), Text('hello flutter')]),
          ],
        ));
  }
}
