import 'package:flutter/material.dart';
import 'package:netflix_flutter_app/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.scrollOffset = 0.0}) : super(key: key);

  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    title: 'TV Show',
                    onTap: () => {print('TV Show')},
                  ),
                  _AppBarButton(
                    title: 'Movies',
                    onTap: () => {print('Movies')},
                  ),
                  _AppBarButton(
                    title: 'My List',
                    onTap: () => {print('My List')},
                  ),
                ],
              ),
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

  const _AppBarButton({super.key, required this.title, required this.onTap});

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
