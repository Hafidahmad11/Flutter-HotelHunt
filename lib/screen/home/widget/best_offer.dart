import 'package:flutter/material.dart';
import 'package:hotel_hunt/model/hotel.dart';

class BestOffer extends StatelessWidget {
  final listOffer = Hotel.generateBestOffer();

  BestOffer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    'See All',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_circle_right_rounded,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...listOffer
              .map((el) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(el.imageUrl),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(el.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Text(el.address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 12))
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          right: 0,
                          child: ClipOval(
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.favorite_rounded,
                                size: 16,
                                color: Colors.red[400],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
