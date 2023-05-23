import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      // elevation: 5,
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }
}
