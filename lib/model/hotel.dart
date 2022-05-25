class Hotel {
  String name;
  String address;
  String imageUrl;

  Hotel(this.name, this.address, this.imageUrl);

  static List<Hotel> generateRecommended(){
    return[
      Hotel('The Moon Hotel',  'Bandung, West Java', 'assets/images/house01.jpeg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/hotelhiroshima.jpg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/house02.jpeg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/GHuniversal.png'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/frontdeskGH.jpg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/Hoteloutbound.jpg'),
    ];
  }


   static List<Hotel> generateBestOffer(){
    return[
      Hotel('The Moon Hotel',  'Bandung, West Java', 'assets/images/offer01.jpeg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/offer02.jpeg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/house02.jpeg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/GHuniversal.png'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/frontdeskGH.jpg'),
      Hotel('Hotel Hiroshima', 'Bandung, West Java', 'assets/images/Hoteloutbound.jpg'),
    ];
  }


}