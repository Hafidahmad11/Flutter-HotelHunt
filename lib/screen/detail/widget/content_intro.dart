import 'package:flutter/material.dart';
import 'package:hotel_hunt/model/hotel.dart';

class ContentIntro extends StatelessWidget {
  final Hotel hotel;
  const ContentIntro({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hotel.name,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text(hotel.address,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 14)),
          const SizedBox(
            height: 10,
          ),
          Text('500000 sqft',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 14)),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Rp.1000000 ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Fer Month',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14)),
            ]),
          )
        ],
      ),
    );
  }
}
