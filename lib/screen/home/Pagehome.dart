import 'package:flutter/material.dart';
import 'package:hotel_hunt/screen/home/widget/CategoriesHotel/categories.dart';
import 'package:hotel_hunt/screen/home/widget/Recommend/recommended_hotel.dart';
import 'package:hotel_hunt/screen/home/widget/BestOffer/best_offer.dart';
import 'package:hotel_hunt/screen/home/widget/SearchInput/search_input.dart';
import 'package:hotel_hunt/screen/home/widget/Welcome/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            RecommendedHotel(),
            BestOffer(),
          ],
        ),
      ),
    );
  }
}
