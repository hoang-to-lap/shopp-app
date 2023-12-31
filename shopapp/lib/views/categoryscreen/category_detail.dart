import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/views/categoryscreen/item_detail.dart';
import 'package:shopapp/widget_common/bg_widget.dart';
import 'package:shopapp/consts/consts.dart';

class CategoryDetail extends StatelessWidget {
   final String ? title ;
  const CategoryDetail({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "baby clothing".text
                  .size(12)
                  .fontFamily(semibold)
                  .color(darkFontGrey).makeCentered().
                  box.white
                  .rounded
                  .size(120, 60).margin(EdgeInsets.symmetric(horizontal: 4),)
                  .make()),
                ),
              ),

              // item container
20.heightBox,


              Expanded(child: Container(
color: lightGrey,
child: GridView.builder(
  shrinkWrap: true,
  itemCount: 6,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250 ,mainAxisSpacing: 8 , crossAxisSpacing: 8), itemBuilder: (context,index){
  return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Image.asset(imgP5 , 
    height: 150,
    width: 200, fit: BoxFit.cover,),
  
    10.heightBox,
    "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
    10.heightBox,
    "600\$".text.color(redColor).fontFamily(bold).size(16).make(),
  
  
  ],
        ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM
        .outerShadow
        .padding(EdgeInsets.all(12)).make().onTap(() {
          Get.to(()=> itemDetail(titile: "dummy item"),);

        });


}),
              ),
              
              ),
            ],
          ),
        ),
      )
    );
  }
}