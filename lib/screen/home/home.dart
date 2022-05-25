import 'package:flutter/material.dart';
import 'package:hotel_hunt/screen/home/widget/best_offer.dart';
import 'package:hotel_hunt/screen/home/widget/categories.dart';
import 'package:hotel_hunt/screen/home/widget/custom_app_bar.dart';
import 'package:hotel_hunt/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:hotel_hunt/screen/home/widget/drawer_menu.dart';
import 'package:hotel_hunt/screen/home/widget/recommended_hotel.dart';
import 'package:hotel_hunt/screen/home/widget/search_input.dart';
import 'package:hotel_hunt/screen/home/widget/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: const DrawerMenu(),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedHotel(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
