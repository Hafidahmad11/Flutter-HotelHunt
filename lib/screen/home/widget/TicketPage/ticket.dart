import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketWidget extends StatelessWidget {
  final TextEditingController? _textEditingController = TextEditingController();

  TicketWidget({Key? key}) : super(key: key);
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
                      hintText: 'Cari Ticket Hotel'),
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
                                'https://1.bp.blogspot.com/-s_is8vUj3a4/Xscjci8F3PI/AAAAAAAADC4/RXU3lYPudSwSBQ2vpZn95ZX49Fuq84FAwCLcBGAsYHQ/s1600/twin%2Bbed%2Baryaduta.jpg',
                                width: 120,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
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
                                        width: 20,
                                      ),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          child: const Icon(Icons.delete,
                                              size: 20, color: Colors.grey),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          )),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.red[200]),
                                        child: const Text(
                                          'Pending',
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                          ),
                          onPressed: () {
                            // Respond to button press
                          },
                          child: const Text('On Progress'),
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
