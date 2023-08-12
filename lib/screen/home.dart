import 'package:carousel_slider/carousel_slider.dart';
import 'package:estate/a_widget/mycard.dart';
import 'package:estate/a_widget/mycard2.dart';
import 'package:estate/screen/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<String> imageUrls = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsMrV0D6U3mwu6vaQBiSJn_yhwE4Qr_TFjJw&usqp=CAU",
    "https://play-lh.googleusercontent.com/Qnzvd8v5UkRLxNYNvHzB7TyoqB9iAzaQrWya4qXfRHbU0um4OckUAPiWYbbWc6mhH6g",
    "https://headtopics.com/images/2023/6/4/ajlnews/553575662815761350564-553575662815761350564-1665418104871034884.webp",
    "https://pbs.twimg.com/media/FbUsTkJXgAAzeyy.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.28,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: imageUrls.asMap().entries.map((entry) {
                final String imageUrl = entry.value;
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.28,
                          width: double.infinity,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(Details());
                          },
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(
                                  0.15), // Adjust opacity as needed
                              BlendMode.srcOver,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                "https://ik.imgkit.net/3vlqs5axxjf/external/https://www.cfmedia.vfmleonardo.com/imageRepo/7/0/156/794/103/ruhap-exterior-6357-hor-clsc_O.jpg?tr=w-1200%2Cfo-auto", // Replace with your background image URL
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 2,
                          left: 50,
                          child: Text(
                            'اسيال',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Details());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black
                                .withOpacity(0.15), // Adjust opacity as needed
                            BlendMode.srcOver,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              "https://headtopics.com/images/2023/6/4/ajlnews/553575662815761350564-553575662815761350564-1665418104871034884.webp", // Replace with your background image URL
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 5,
                          left: 90,
                          child: Text(
                            'عريكة',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // text
            const ListTile(
              contentPadding: EdgeInsets.only(left: 220),
              title: Text(
                "حديث قال مشى ريحة",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
              subtitle: Text(
                "حديث قال مشى ريحة",
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            // slide hote details
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard(
                      image:
                          "https://q-xx.bstatic.com/xdata/images/hotel/840x460/325757951.jpg?k=9ace39329a32ac4bbb64135483e4b2172132c3da9b2f830b26df64772c708688&o=",
                      txt: "الرياض30"),
                  MyCard(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcwNG39OwufOFBUrTnTk6xTjO1f7jvwVywBg&usqp=CAU",
                      txt: "56 اسيال "),
                  MyCard(
                      image:
                          "https://mc-6411c2dd-ed8a-41b8-8a34-7690-cdn-endpoint.azureedge.net/mhb-media/regions/middleeast/saudiarabia/hail/millenniumhailhotel/generic/images/millennium-hail-exteiror-1.jpg?rev=846d3bfbb6044539a2a74ce73759a2b6",
                      txt: "صفا  52"),
                  MyCard(
                      image:
                          "https://mc-6411c2dd-ed8a-41b8-8a34-7690-cdn-endpoint.azureedge.net/mhb-media/regions/middleeast/saudiarabia/hail/millenniumhailhotel/rooms/images/clubroom/millennium-hotel-hail-king-bedroom.jpg?w=1000&rev=56bfe441977d48aebd7993a7fcae5366&hash=5FCC4E04C9334C65FC7B8E4D59CA16A9",
                      txt: "45 التفق"),
                  MyCard(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkn1ky-gEDI9mSRPmikRyqmdeGXx4wYUp7rw&usqp=CAU",
                      txt: "مکہ ہوٹل  52"),
                  MyCard(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_-OZnm0zqfqyr8i5aPgPMZqHGBejxYjsYRw&usqp=CAU",
                      txt: "45 مشيد"),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // text
            const Padding(
              padding: EdgeInsets.only(left: 250.0),
              child: const Text(
                "شير كاونا",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            // slide hotel logo with image
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard2(
                      image:
                          "https://play-lh.googleusercontent.com/v12V7hZ-M6nVKvGgfB1VIGHsW1HdYilH0YxHx2zc6mCq7isZ008J8rT5yesnFF0GueI=w600-h300-pc0xffffff-pd",
                      txt: "صفا "),
                  MyCard2(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCzqkU-uqUvslQ8F-g0u0kpmqn6k46MpTIFKSodgH-EZMEW6YEguosWXvT4SNyCfnPfaA&usqp=CAU",
                      txt: "مکہ"),
                  MyCard2(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbn5gVGn7DdZ2w-6H9RZlwJliWg-tfPA4g95hRHBxXYpkhAmYBccBUn-u_BOLTbOMZd-c&usqp=CAU",
                      txt: "صفا"),
                  MyCard2(
                      image:
                          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/421034029.jpg?k=d46c9e1d4cd80c6abf06a5e5e989abdba476a3f8a5b6c79141176f1b1adbcbe2&o=&hp=1",
                      txt: "اسيال"),
                  MyCard2(
                      image:
                          "https://www.ewaahotels.com/uploads/hotel/logo/25c14defdc51188908f7744251bdff591583390638.png",
                      txt: "التفق"),
                  MyCard2(
                      image:
                          "https://www.eyeofriyadh.com/directory/images/2022/12/efadc9dd4f27.jpg",
                      txt: "صفا"),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
