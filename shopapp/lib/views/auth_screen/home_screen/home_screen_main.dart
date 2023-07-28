import 'package:flutter/material.dart';
import 'package:shopapp/consts/colors.dart';
import 'package:shopapp/consts/consts.dart';
import 'package:shopapp/consts/list.dart';
import 'package:shopapp/widget_common/home_buttons.dart';

class Home_mainScreen extends StatelessWidget {
  const Home_mainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child:  Column(
children: [
  Container(
    alignment: Alignment.center,
    height: 60,
    color: lightGrey,
    child: TextFormField(

      decoration:const InputDecoration(
        border: InputBorder.none,
        suffixIcon: Icon(Icons.search),
        filled: true,
        fillColor: whiteColor,
        hintText: searchanything,
        hintStyle: TextStyle(
          color: textfieldGrey,
        ),
      ),
    ),
  ),
  //swipper brand
  10.heightBox,
  Expanded(
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          // swipper brand
          VxSwiper.builder(
        aspectRatio: 16/9,
        autoPlay: true,
        height: 150,
        enlargeCenterPage: true,
        itemCount: sliderList.length, 
      itemBuilder: (context,index){
        return Image.asset(sliderList[index],
        fit: BoxFit.fitWidth,
        ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
      }),
      10.heightBox,
      // create deal button
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
        List.generate(2, (index) => homButtons(
          height: context.screenHeight *0.15,
          width: context.screenWidth/2.5,
          icon: index == 0 ? icTodaysDeal : icFlashDeal , 
          title: index == 0 ? todaydeal : flashSale,
    
        )),
      ),
    
      //2nd swipper
      10.heightBox,
       VxSwiper.builder(
        aspectRatio: 16/9,
        autoPlay: true,
        height: 150,
        enlargeCenterPage: true,
        itemCount: secondSliderList.length, 
      itemBuilder: (context,index){
        return Image.asset(secondSliderList[index],
        fit: BoxFit.fitWidth,
        ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
      }),
    
      10.heightBox,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (index) => homButtons(
          height: context.screenHeight *0.15,
          width: context.screenWidth/3.5,
          icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
          title:  index == 0 ? topCategories : index == 1 ? brand : topSeller ,
        ),
        ),
      ),
      // create fueture category
      10.heightBox,
      Align(
        alignment: Alignment.centerLeft,
        child: featureCategory.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
         Align(
        alignment: Alignment.centerLeft,
        child: featureCategory.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
         Align(
        alignment: Alignment.centerLeft,
        child: featureCategory.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
         Align(
        alignment: Alignment.centerLeft,
        child: featureCategory.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
        ],
      ),
    ),
  ),

],
      )),

    );
  }
}