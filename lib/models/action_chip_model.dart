import 'package:flutter/material.dart';

class ActionChipModel {
  final String category;
  final IconData icon;
  final bool isActicve, isIcon;

  ActionChipModel({
    required this.isActicve,
    required this.category,
    required this.isIcon,
    required this.icon,
  });
}

List<ActionChipModel> exploreChiplist = [
  ActionChipModel(
    isActicve: true,
    category: 'Brincadeiras',
    isIcon: true,
    icon: Icons.toys_rounded,
  ),
  ActionChipModel(
    isActicve: false,
    category: 'Pisicologia',
    isIcon: true,
    icon: Icons.psychology_rounded,
  ),
  ActionChipModel(
    isActicve: false,
    category: 'Fonoaudiologia',
    isIcon: true,
    icon: Icons.record_voice_over_rounded,
  ),
  ActionChipModel(
    isActicve: false,
    category: 'Educação',
    isIcon: true,
    icon: Icons.school_rounded,
  ),
  ActionChipModel(
    isActicve: false,
    category: 'Science & Tech',
    isIcon: true,
    icon: Icons.science_rounded,
  ),
  ActionChipModel(
    isActicve: false,
    category: 'Entertainment',
    isIcon: true,
    icon: Icons.live_tv_rounded,
  ),
];
