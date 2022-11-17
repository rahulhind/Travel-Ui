import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TravelCard extends StatelessWidget {
  final String title, subtitle, imgurl;
  TravelCard(this.title, this.subtitle, this.imgurl);
  @override
  Widget build(BuildContext context) {
    return HStack([
      Image.network(
        imgurl,
        fit: BoxFit.fill,
      ).wh(context.percentWidth * 35, 90),
      10.widthBox,
      VStack(
        [
          title.text.xl.make(),
          3.heightBox,
          subtitle.text.semiBold.make().shimmer(),
          3.heightBox,
          [
            VxRating(
              onRatingUpdate: (value) {},
            ),
            2.widthBox,
            "(100)".text.xs.gray900.make(),
          ].row(),
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).expand(),
    ]).cornerRadius(8).backgroundColor(Vx.gray200);
  }
}
