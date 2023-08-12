import 'package:estate/a_widget/detail_card.dart';
import 'package:estate/a_widget/location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customer_navigation.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 6, 64, 163),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color.fromARGB(96, 218, 206, 206),
                child: IconButton(
                    onPressed: () {
                      Get.to(Navigation());
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 25,
                    )),
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 6, 64, 163),
          centerTitle: true,
          title: const Text(
            "عريكة",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              //serach box
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: h * 0.015, horizontal: w * 0.06),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 226, 224, 224),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Colors.blueGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(179, 226, 224, 224))),
                    suffixIcon: const Icon(
                      Icons.search_rounded,
                      size: 28,
                    ),
                    prefixIcon: const Icon(
                      Icons.line_axis_rounded,
                      size: 25,
                    ),
                    hintText: "بحث",
                    hintStyle:
                        const TextStyle(fontSize: 17, color: Colors.black38),
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
              ),
              // details row
              Padding(
                padding: EdgeInsets.only(right: w * 0.05),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Row(
                    children: [
                      Location(name: "اسيال اسيال"),
                      Location(name: " التفق"),
                      Location(name: "اسيال"),
                      Location(name: "مکہ"),
                      Location(name: "صفا"),
                      Location(name: "اسيال"),
                      Location(name: "اسيال"),
                      Location(name: "مکہ"),
                    ],
                  ),
                ),
              ),
              // hotel deatils card
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    //verticalDirection: VerticalDirection.up,
                    children: [
                      DetailsCard(
                          name: "اسيال",
                          img:
                              "https://qtxasset.com/quartz/qcloud1/media/image/Grand%20Hyatt%20Al%20Khobar%20Hotel%20and%20Residences.png?VersionId=t_b9ZDE2Mn7pSIJtYPWCTmW1QJQUWAVY",
                          num: 45),
                      DetailsCard(
                          name: "التفق",
                          img:
                              "https://c.otcdn.com/imglib/hotelfotos/7/676/hotel-fairmont-riyadh-riad-20210115180510.jpg",
                          num: 45),
                      DetailsCard(
                          name: "مکہ",
                          img:
                              "https://www.hotelnewsme.com/wp-content/uploads/2022/11/RUHJB_entrance-1024x654.jpg",
                          num: 65),
                      DetailsCard(
                          name: " صفا التفق",
                          img:
                              "https://ik.imgkit.net/3vlqs5axxjf/external/ik-seo/http://images.ntmllc.com/v4/Hotel/U81/U81171/U81171_EXT_ZBA602/SAS-Hotel-Al-Jubail-Exterior.jpg?tr=w-780%2Ch-437%2Cfo-auto",
                          num: 68),
                      DetailsCard(
                          name: "صفا",
                          img:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4LvIvwFLC8Xa0mhOhrlLs4AMFx5GuFDhqQ&usqp=CAU",
                          num: 45),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
