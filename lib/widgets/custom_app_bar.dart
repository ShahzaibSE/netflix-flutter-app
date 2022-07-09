import 'package:flutter/material.dart';
import 'package:netflix_flutter_app/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
        ],
      ),
    );
  }
}
