import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFEFEDEE),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0)
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Search here ...',
            prefixIcon: Container(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
            contentPadding: const EdgeInsets.all(2)),
      ),
    );
  }
}
