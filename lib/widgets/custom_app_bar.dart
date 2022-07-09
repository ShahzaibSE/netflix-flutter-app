import 'dart:html';

import 'package:flutter/material.dart';
import 'package:netflix_flutter_app/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  // const _AppBarButton({Key? key}) : super(key: key);
  final String title;
  final Function() onTap;

  const _AppBarButton(Key key, {required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
