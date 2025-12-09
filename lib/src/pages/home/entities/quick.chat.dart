import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum QuickChat {
  bestMothersDayGift(
    icon: IconDetails(iconData: CupertinoIcons.gift, color: Colors.green),
    label: 'Best mother\'s day gift',
  ),
  independentDay(
    icon: IconDetails(iconData: Icons.nordic_walking, color: Colors.purple),
    label: 'Independent Day',
  ),
  sport(
    icon: IconDetails(iconData: Icons.sports, color: Colors.blueAccent),
    label: 'Sport',
  );

  final IconDetails icon;
  final String label;

  const QuickChat({required this.icon, required this.label});
}

class IconDetails {
  final IconData iconData;
  final Color color;

  const IconDetails({required this.iconData, required this.color});
}
