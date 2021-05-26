import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              child: Container(height: 300, width: 300, color: Colors.red)
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              child: Container(height: 150, width: 150, color: Colors.purpleAccent)
            ),
          ],
        ),
      ),
    );
  }
}
