import 'package:flutter/material.dart';
import 'package:hotel_hunt/model/hotel.dart';
import 'package:hotel_hunt/screen/detail/widget/about.dart';
import 'package:hotel_hunt/screen/detail/widget/content_intro.dart';
import 'package:hotel_hunt/screen/detail/widget/detail_app_bar.dart';
import 'package:hotel_hunt/screen/detail/widget/hotel_info.dart';

class DetailPage extends StatelessWidget {
  final Hotel hotel;
  const DetailPage({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailAppBar(hotel: hotel),
          const SizedBox(height: 20),
          ContentIntro(hotel: hotel),
          const SizedBox(height: 20),
          const HotelInfo(),
          const SizedBox(height: 20),
          About(),
          const SizedBox(height: 25),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
