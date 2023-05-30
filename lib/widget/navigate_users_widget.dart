import 'package:flutter/material.dart';

class NavigateUsersWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClickedPrevious;
  final VoidCallback onClickedNext;

  const NavigateUsersWidget({
    Key? key,
    required this.text,
    required this.onClickedPrevious,
    required this.onClickedNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment:  MainAxisAlignment.center,
    children: [
      IconButton(
        iconSize: 35,
        icon: const Icon(
            Icons.navigate_before,
            color: Color(0xffc71585),
        ),
        onPressed: onClickedPrevious,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xffc71585),
        ),
      ),
      IconButton(
        iconSize: 35,
        icon: const Icon(
          Icons.navigate_next,
          color: Color(0xffc71585),
        ),
        onPressed: onClickedNext,
      ),
    ],
  );
}
