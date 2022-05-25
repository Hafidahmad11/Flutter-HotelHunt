import 'package:flutter/material.dart';
import 'package:hotel_hunt/widget/circle_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF5F6F6),
      elevation: 0,
      leading: InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const CircleIconButton(
          iconUrl: 'assets/icons/menu.svg',
          color: Colors.transparent,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
