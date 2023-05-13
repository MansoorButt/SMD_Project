import 'package:emart_app/views/splash_screen/category_screen/item_details.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  6,
                  (index) => "Baby Clothing"
                      .text
                      .size(12)
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .rounded
                      .size(150, 60)
                      .margin(EdgeInsets.symmetric(horizontal: 4))
                      .make()),
            ),
          ),
          20.heightBox,
          Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(imgP4,
                            width: 200, height: 150, fit: BoxFit.cover),
                        "Ladies Shoe"
                            .text
                            .size(16)
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "Rs1200"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make()
                      ],
                    )
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .rounded
                        .outerShadowSm
                        .padding(const EdgeInsets.all(12))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(
                            title: "Dummy item",
                          ));
                    });
                  }))
        ]),
      ),
    ));
  }
}
