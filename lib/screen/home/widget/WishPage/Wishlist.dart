import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class wishPage extends StatelessWidget {
  final TextEditingController? _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: -10.0, right: 0.0, top: 0.0, bottom: 0.0),
                      hintText: 'Cari Wishlist'),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Icon(
                    Icons.filter_list_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                onPressed: () {},
              )
            ]),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                'https://1.bp.blogspot.com/-vlpk0krqj3Y/XscjxPeDNlI/AAAAAAAADDA/KyHd3lkGUiQdhMtSgRYJxsh9bzMyTmv8gCLcBGAsYHQ/s1600/grand%2Bdeluxe%2Baryaduta%2Bhotel.jpg',
                                width: 120,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hotel Hiroshima',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      width: 45,
                                    ),
                                    ClipOval(
                                      child: Container(
                                        padding: const EdgeInsets.all(3),
                                        child: Icon(
                                          Icons.favorite,
                                          size: 20,
                                          color: Colors.red[400],
                                        ),
                                      ),
                                    )
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
                                Row(
                                  children: [
                                    const Icon(Icons.location_on,
                                        size: 13, color: Colors.grey),
                                    Text(
                                      'Bandung, Jawa Barat',
                                      style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('\$20',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500)),
                                    Text('/night',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: const Icon(Icons.delete,
                                            size: 20, color: Colors.grey),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 140.0)),
                          onPressed: () {
                            // Respond to button press
                          },
                          child: const Text('Booking'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
