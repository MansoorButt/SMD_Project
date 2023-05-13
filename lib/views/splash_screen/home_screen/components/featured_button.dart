import 'package:emart_app/consts/consts.dart';

Widget featuredButton({String? title , icon}) {
  return Row(
    children: [
      Image.asset(imgS1,width: 60,fit:BoxFit.fill),
      10.widthBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make(),
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).white.padding(EdgeInsets.all(4)).roundedSM.outerShadowSm.make();
}
