import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  final String name;

  Location({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    double requiredWidth =
        (name.length * 17.0) + 2.0; // Adjust multiplier and offset as needed

    return Padding(
      padding: EdgeInsets.only(right: w * 0.01, left: w * 0.018),
      child: Container(
        width: requiredWidth,
        height: h * 0.05,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue.shade900),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
