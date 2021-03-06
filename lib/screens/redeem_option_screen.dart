import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:sian/widgets/custom_app_bar.dart';
import 'package:sian/widgets/redeem_option_card.dart';

class RedeemOptionScreen extends StatelessWidget {
  const RedeemOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff222831),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.11),
          child: CustomAppBar(),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: _height * 0.05),
                RedeemOptionCard(
                  "Restaurant",
                  "For some good food experience",
                  "/restaurant",
                ),
                SizedBox(height: _height * 0.061),
                RedeemOptionCard(
                  "Cafe",
                  "For relaxing and chilling.",
                  "/cafe",
                ),
                SizedBox(height: _height * 0.061),
                RedeemOptionCard(
                  "Hotel",
                  "For a relaxing and fun stay.",
                  "/hotel",
                ),
                SizedBox(height: _height * 0.05),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
