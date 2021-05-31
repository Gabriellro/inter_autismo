import 'package:flutter/material.dart';

import 'package:inter_autismo/models/ajuda_rapida_model.dart';
import 'package:inter_autismo/style_guide.dart';

// ignore: must_be_immutable
class AjudaRapidaController extends StatelessWidget {
  AjudaRapidaModel ajudaRapidaModel;

  AjudaRapidaController({
    Key? key,
    required this.ajudaRapidaModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: preto.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  ajudaRapidaModel.icon,
                  size: 36,
                  color: ajudaRapidaModel.color,
                ),
              ),
              Text(
                ajudaRapidaModel.category,
                style: kStyleCaption.copyWith(color: preto),
              )
            ],
          ),
        ),
      ],
    );
  }
}
