import 'package:flutter/material.dart';
import 'package:hotel_hunt/model/hotel.dart';
import '../../../detail/detail.dart';

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
              .map((hotel) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailPage(
                              hotel: hotel,
                            ),
                          ));
                    },
                    child: Container(
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
                                        image: AssetImage(hotel.imageUrl),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotel.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 13,
                                          color: const Color(0xFF100E34)
                                              .withOpacity(0.5),
                                        ),
                                        Text(hotel.address,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 12)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        for (var i = 0; i < 4; i++)
                                          const Icon(
                                            Icons.star_rounded,
                                            size: 20,
                                            color: Colors.yellow,
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
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
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
