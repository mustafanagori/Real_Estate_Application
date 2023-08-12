import 'package:estate/screen/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navigation.dart';
import 'dot.dart';
import 'favorit.dart';
import 'home.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  HomeNavigation bottomNavigationContoller = Get.put(HomeNavigation());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: IndexedStack(
            index: bottomNavigationContoller.selectedIndex.value,
            children: [
              Dot(),
              Favorit(),
              Shop(),
              Home(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 4, 80, 137),
            borderRadius: BorderRadius.all(
              Radius.circular(20), // Adjust the radius as needed
            ),
          ),
          margin: const EdgeInsets.all(10),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor:
                Colors.transparent, // Set background color to transparent
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: bottomNavigationContoller.selectedIndex.value,
            onTap: bottomNavigationContoller.changeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "favorit",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bag_fill),
                label: "Shop",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
