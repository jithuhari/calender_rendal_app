import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color colorbackground;
  final String? title1;

  final Widget? icon;
  final Widget? icon2;

  const CustomAppBar(
      {Key? key,
      this.icon2,
      this.title1 = "",
      this.icon,
      this.colorbackground = const Color(0XFFFAFAFA)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: icon2,
      backgroundColor: colorbackground,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
        child: Text(
          title1!,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xff212121),
              ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: GestureDetector(onTap: () {}, child: icon),
        )
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
