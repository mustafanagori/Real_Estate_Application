import 'package:flutter/material.dart';

import 'facilities.dart';

class DetailsCard extends StatelessWidget {
  int num;
  String img;
  String name;
  DetailsCard(
      {required this.name, required this.num, required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.01, horizontal: w * 0.04),
      child: Container(
        height: h * 0.51,
        width: w * 8,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  img,
                  width: w * 0.9,
                  height: h * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // text 1
            Padding(
              padding: EdgeInsets.only(right: w * 0.02),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "صفا",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Text 2
            Padding(
              padding: EdgeInsets.only(right: w * 0.02),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 21, 124, 208),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // divider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.03),
              child: const Divider(),
            ),
            // 4 * 4 text
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Text("التفق اسيال"),
                        Icon(
                          Icons.horizontal_split_outlined,
                          color: Colors.blue.shade800,
                          size: 28,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text("صفا اسيال"),
                        Icon(
                          Icons.toll_outlined,
                          color: Colors.blue.shade800,
                          size: 28,
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(num.toString()),
                    Text(num.toString()),
                  ],
                ),
              ],
            ),
            // divider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.03),
              child: const Divider(),
            ),
            //facilities icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Facilities(img: "assets/icons/school.png"),
                Facilities(img: "assets/icons/hospital.png"),
                Facilities(img: "assets/icons/mosque.png"),
                Facilities(img: "assets/icons/pool.png"),
                Facilities(img: "assets/icons/heart.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
