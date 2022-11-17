import 'package:flutter/material.dart';
import 'package:travelui/color.dart';
import 'package:travelui/travel_cards.dart';
import 'package:velocity_x/velocity_x.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  final image =
      "https://imgk.timesnownews.com/story/indian-little-boy-sitting-on-the-wall-picture-id1065711066.jpg?tr=w-400,h-300,fo-auto";
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple500,
      appBar: AppBar(
        backgroundColor: Vx.purple500,
        elevation: 0.0,
        leading: VStack(
          [
            VxBox().size(20.0, 2.0).white.make(),
            5.heightBox,
            VxBox().size(30.0, 2.0).white.make(),
            5.heightBox,
            VxBox().size(18.0, 2.0).white.make(),
          ],
        ).pOnly(left: 15.0, top: 15.0),
      ),
      body: VStack([
        VxBox(
          child: [
            VxBox()
                .square(100.0)
                .roundedFull
                .neumorphic(
                  color: Vx.purple500,
                  elevation: 30.0,
                )
                .bgImage(
                  DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                )
                .make(),
            "Hi,"
                .richText
                .withTextSpanChildren([" Pawan".textSpan.bold.make()])
                .white
                .xl2
                .makeCentered()
                .p8(),
            "Solo Traveller".text.white.makeCentered(),
            VxTextField(
              autofocus: false,
              borderType: VxTextFieldBorderType.none,
              fillColor: Vx.gray200.withOpacity(0.3),
              hint: "Search",
              contentPaddingTop: 14,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
                .customTheme(
                  themeData: ThemeData(
                    brightness: Brightness.dark,
                  ),
                )
                .cornerRadius(10.0)
                .p16(),
          ].column(),
        ).makeCentered().h40(context),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: VxBox(
              child: VStack([
            TabBar(
                controller: _tabController,
                indicatorColor: Vx.purple500,
                unselectedLabelColor: Vx.gray300,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colorss.purple,
                labelPadding: Vx.m16,
                tabs: [
                  Icon(Icons.map, size: 25.0),
                  Icon(Icons.pin_drop, size: 25.0),
                  Icon(Icons.restaurant, size: 25.0),
                  Icon(Icons.person, size: 25.0),
                ]),
            TabBarView(
              controller: _tabController,
              children: ["1", "2", "3", "4"]
                  .map((e) => VStack([
                        "Discover Places in Jamshedpur"
                            .text
                            .semiBold
                            .xl2
                            .gray500
                            .make(),
                        20.heightBox,
                        TravelCard("Jubilee park", "Sakchi",
                            "https://dynamic.tourtravelworld.com/blog_images/jubilee-park-jamshedpur-20170904040101.jpg"),
                        20.heightBox,
                        TravelCard("bhuvaneshwari temple", "Telco",
                            "https://images.ixigo.com/image/upload/t_sthumb,f_auto/bhuvaneshwari-temple-images-photos-525e67abe4b003593f31b610.jpg"),
                      ]).p12())
                  .toList(),
            ).expand(),
          ])).white.make(),
        ).expand()
      ]),
    );
  }
}
