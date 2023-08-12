import 'package:estate/a_widget/location.dart';
import 'package:flutter/material.dart';

import '../a_widget/detail_card.dart';

class Dot extends StatefulWidget {
  const Dot({super.key});

  @override
  State<Dot> createState() => _DotState();
}

class _DotState extends State<Dot> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 4, 80, 137),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )
          ],
          title: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "ترتیب",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        endDrawer: Drawer(
          width: w * 0.65,
          backgroundColor: const Color.fromARGB(255, 4, 80, 137),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/89071010?v=4"), // Path to your profile picture
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "غلام مصطفی", // Your name here
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "هنا حسابي", // Your email here
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Divider(),
              tile(name: "حساب", icon: Icons.person),
              const Divider(),
              tile(name: "جلسة", icon: Icons.settings),
              const Divider(),
              tile(name: "يساعد", icon: Icons.help),
              const Divider(),
              tile(name: "تعليق", icon: Icons.feed_rounded),
              const Divider(),
              tile(name: "تفصيلي", icon: Icons.details),
            ],
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

class tile extends StatelessWidget {
  String name;
  IconData icon;
  tile({required this.name, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(
        name,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      leading: Icon(
        icon,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
