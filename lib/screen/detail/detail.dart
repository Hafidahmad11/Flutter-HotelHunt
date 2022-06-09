import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_hunt/model/hotel.dart';
import 'package:hotel_hunt/screen/detail/widget/about.dart';
import 'package:hotel_hunt/screen/detail/widget/content_intro.dart';
import 'package:hotel_hunt/screen/detail/widget/detail_app_bar.dart';
import 'package:hotel_hunt/screen/detail/widget/hotel_info.dart';

class DetailPage extends StatelessWidget {
  final bottomBarItem = [
    'acvector',
    'restaurantvector',
    'swimmingpoolvec',
    'uil_parking-square',
    'ant-design_wifi-outlined',
  ];
  final Hotel hotel;
  DetailPage({Key? key, required this.hotel}) : super(key: key);

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
          const SizedBox(height: 25),
          Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: const Text("Confirmation"),
                              content: Text("Hotel booked at ${hotel.name}"),
                              actions: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text(
                                      'OK',
                                      style: TextStyle(fontSize: 15),
                                    )),
                              ],
                            )),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: bottomBarItem
                    .map((e) => SvgPicture.asset(
                          'assets/icons/$e.svg',
                          color: Theme.of(context).primaryColor,
                        ))
                    .toList()),
          ),
        ],
      )),
    );
  }
}
