import 'package:flutter/material.dart';

class AjudaRapidaModel {
  final String category;
  final IconData icon;
  final Color color;

  AjudaRapidaModel({
    required this.category,
    required this.icon,
    required this.color,
  });
}

List<AjudaRapidaModel> ajudaRapidalist = [
  AjudaRapidaModel(
    category: 'Respirar',
    icon: Icons.air_rounded,
    color: Colors.blueAccent,
  ),
  AjudaRapidaModel(
    category: 'Dormir',
    icon: Icons.nights_stay_rounded,
    color: Colors.blueAccent,
  ),
  AjudaRapidaModel(
    category: 'Ansiedade',
    icon: Icons.sentiment_neutral,
    color: Colors.amberAccent,
  ),
  AjudaRapidaModel(
    category: 'Estresse',
    icon: Icons.sentiment_dissatisfied_rounded,
    color: Colors.red,
  ),
];
