import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:emart_app/views/splash_screen/profile_screen/components/details_cart.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit, color: whiteColor))
                  .onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile, width: 100, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Kim Lu".text.fontFamily(semibold).white.make(),
                      "kim123@gmail.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor)),
                      onPressed: () {},
                      child: "Logout".text.fontFamily(semibold).white.make()),
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    count: "0",
                    title: "Items in your cart",
                    width: context.screenWidth / 3.1),
                detailsCard(
                    count: "3",
                    title: "Items in Wishlist",
                    width: context.screenWidth / 3.1),
                detailsCard(
                    count: "10",
                    title: "Ordered Products",
                    width: context.screenWidth / 3.1),
              ],
            ),
            
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: lightGrey,
                );
              },
              itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    profileButtonsIcon[index],
                    width: 22,
                  ),
                  title: profileButtonsList[index].text.fontFamily(semibold).make(),
                );
              },
            ).box.white.rounded.margin(const EdgeInsets.all(15)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowLg.make().box.color(redColor).make(),
          ])),
    ));
  }
}
