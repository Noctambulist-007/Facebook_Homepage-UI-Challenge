import 'package:facebook/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 3.0,
      indicatorColor: Palette.facebookBlue,
      tabs: icons
          .asMap()
          .entries
          .map(
            (entry) => Tab(
              icon: Icon(
                entry.value,
                color: entry.key == selectedIndex
                    ? Palette.facebookBlue
                    : Colors.black45,
                size: 30.0,
              ),
            ),
          )
          .toList(),
      onTap: onTap,
    );
  }
}
