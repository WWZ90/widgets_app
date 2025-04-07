import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subTitle, required this.link, required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Widgets',
    subTitle: 'Basic widgets',
    link: '/widgets',
    icon: Icons.widgets
  ),
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
    title: 'Dialogs',
    subTitle: 'Dialogs widgets',
    link: '/dialogs',
    icon: Icons.chat_bubble,
  ),
  MenuItem(
    title: 'Progress Indicator',
    subTitle: 'General and controllers',
    link: '/progress',
    icon: Icons.refresh_outlined,
  ),
];