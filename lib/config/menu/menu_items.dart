import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Buttons widgets',
    link: '/buttons',
    icon: Icons.touch_app,
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Cards widgets',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicator',
    subTitle: 'General and controllers',
    link: '/progress',
    icon: Icons.refresh_outlined,
  ),
  MenuItem(
    title: 'Snackbars',
    subTitle: 'Snackbars',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Animated Stateful Widget',
    link: '/animated',
    icon: Icons.check_box,
  ),
  MenuItem(
    title: 'UI Controls',
    subTitle: 'A series of Flutter Controllers',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'App Tutorial',
    subTitle: 'A simple app tutorial',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
  MenuItem(
    title: 'InfiniteScroll and Pull',
    subTitle: 'InfiniteScroll and Pull',
    link: '/infinite',
    icon: Icons.list_alt,
  ),
];
