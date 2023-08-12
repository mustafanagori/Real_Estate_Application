import 'package:estate/a_widget/detail_card.dart';
import 'package:flutter/material.dart';

import '../a_widget/mycard.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 6, 64, 163),
          centerTitle: true,
          title: const Text(
            "محل",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                MyCard(
                    image:
                        "https://dq5r178u4t83b.cloudfront.net/wp-content/uploads/sites/55/2017/06/04142004/Fairmont_Makkah_Royal_Suite_Bedroom_490503_standard.jpg",
                    txt: "45 مشيد"),
                MyCard(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ2xjInRTNgFl0Jr2FhNBQAIwTd0iu1c1cVMf1tNwuREYD4pmSkq2B0iZA8BNU8pZ_wwY&usqp=CAU",
                    txt: "45 الفندق"),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            DetailsCard(
                name: "الفندق",
                num: 56,
                img:
                    "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/403583149.jpg?k=6cf94aa5baa88634cdbeeba88b339ba2ef302d91ebd065ed09b5ece470c08347&o=")
          ],
        ),
      ),
    );
  }
}
