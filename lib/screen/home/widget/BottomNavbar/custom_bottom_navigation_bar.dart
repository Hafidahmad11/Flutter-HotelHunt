import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

NavigationBarTheme customNavBar(int currentIndex, setIndex) {
  return NavigationBarTheme(
    data: NavigationBarThemeData(
      height: 46,
      backgroundColor: Colors.white,
      indicatorColor: Colors.white.withOpacity(0.7),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      labelTextStyle: MaterialStateProperty.all(
        GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.grey[100],
            fontWeight: FontWeight.w500,
            letterSpacing: 1.4,
            fontSize: 12,
          ),
        ),
      ),
      iconTheme: MaterialStateProperty.all(
        IconThemeData(
          color: Colors.grey[100],
          size: 28,
        ),
      ),
    ),
    child: NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: setIndex,
      destinations: [
        NavigationDestination(
          icon: SvgPicture.asset('assets/icons/home.svg'),
          label: 'Home',
          selectedIcon: const Icon(
            Icons.home_rounded,
            color: Color(0xFF0B9ADD),
          ),
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/icons/bi_ticket-detailed-fill.svg'),
          label: 'Ticket',
          selectedIcon: const Icon(
            Icons.confirmation_number_rounded,
            color: Color(0xFF0B9ADD),
          ),
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/icons/ic_round-favorite.svg'),
          label: 'Favorite',
          selectedIcon: const Icon(
            Icons.favorite_rounded,
            color: Color(0xFF0B9ADD),
          ),
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/icons/bi_person-fill.svg'),
          label: 'Profile',
          selectedIcon: const Icon(
            Icons.person,
            color: Color(0xFF0B9ADD),
          ),
        ),
      ],
    ),
  );
}
