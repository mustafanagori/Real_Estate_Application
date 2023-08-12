import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  String img;
  Facilities({required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.02),
      child: Container(
        height: h * 0.06,
        width: w * 0.14,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image(
          image: AssetImage(
            img,
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
