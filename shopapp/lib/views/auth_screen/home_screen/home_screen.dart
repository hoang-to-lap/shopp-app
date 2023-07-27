import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/consts/consts.dart';
import 'package:shopapp/controller/home_controller.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var controller = Get.put(HomeController());
  var navbarItem = [
BottomNavigationBarItem(icon: Image.asset(icHome ,width: 21,) , label : home),
BottomNavigationBarItem(icon: Image.asset(icCategories ,width: 21,) , label : category),
BottomNavigationBarItem(icon: Image.asset(icCart ,width: 21,) , label : cart),
BottomNavigationBarItem(icon: Image.asset(icProfile ,width: 21,) , label : account),
  ];
  var navBody = [
    Container(color: Colors.blue,),
     Container(color: Colors.amber,),

      Container(color: Colors.purple,),
       Container(color: Colors.cyan,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            ()=> Expanded(
          child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
       bottomNavigationBar: Obx(() =>
       
          BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle:const TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          items: navbarItem,
          onTap: (vallue){
controller.currentNavIndex.value = vallue ;
          },
          ),

       ),
    );
  }
}