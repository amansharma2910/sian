import 'package:flutter/material.dart';
import 'package:sian/widgets/custom_app_bar.dart';
import 'package:sian/widgets/redeem_card.dart';


class RestaurantRedeemScreen extends StatelessWidget {
  const RestaurantRedeemScreen({ Key? key }) : super(key: key);

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
                RedeemCard(
                  "McDonalds",
                  "Flat 50% off on family meal.",
                  10,
                ),
                SizedBox(height: _height * 0.061),
                RedeemCard(
                  "KFC",
                  "Free Zinger on any order.",
                  50,
                ),
                SizedBox(height: _height * 0.061),
                RedeemCard(
                  "Pizza Hut",
                  "Buy 1 pizza get 1 Free.",
                  100,
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