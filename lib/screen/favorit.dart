import 'package:estate/a_widget/detail_card.dart';
import 'package:flutter/material.dart';

class Favorit extends StatelessWidget {
  const Favorit({super.key});

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
            "عريكة",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            DetailsCard(
                name: "عريكة",
                num: 63,
                img:
                    "https://media-cdn.tripadvisor.com/media/photo-s/29/37/ab/f6/hotel-exterior.jpg")
          ],
        ),
      ),
    );
  }
}
