import 'package:flutter/material.dart';
import 'package:hotel_hunt/model/hotel.dart';
import 'package:hotel_hunt/screen/detail/detail.dart';
import 'package:hotel_hunt/widget/circle_icon_button.dart';

class RecommendedHotel extends StatelessWidget {
  final recommendedList = Hotel.generateRecommended();

  RecommendedHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailPage(hotel: recommendedList[index]);
                      },
                    ),
                  );
                },
                child: Container(
                  height: 300,
                  width: 230,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              recommendedList[index].imageUrl,
                            ),
                            fit: BoxFit.cover,
                            scale: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: [
                            for (var i = 0; i < 4; i++)
                              const Icon(
                                Icons.star_rounded,
                                size: 26,
                                color: Colors.yellow,
                              ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: SizedBox(
                          width: 26,
                          height: 26,
                          child: index % 2 == 0
                              ? const CircleIconButton(
                                  iconUrl: 'assets/icons/mark.svg',
                                  color: Colors.transparent,
                                )
                              : CircleIconButton(
                                  iconUrl: 'assets/icons/mark.svg',
                                  color: Colors.grey.shade400,
                                ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                            color: Colors.white54,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recommendedList[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 13,
                                          color: const Color(0xFF100E34)
                                              .withOpacity(0.5),
                                        ),
                                        Text(
                                          recommendedList[index].address,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              index % 3 == 0
                                  ? Icon(
                                      Icons.favorite_rounded,
                                      size: 26,
                                      color: Colors.red[400],
                                    )
                                  : Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 26,
                                      color: Colors.red[400],
                                    ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 20),
          itemCount: recommendedList.length),
    );
  }
}
