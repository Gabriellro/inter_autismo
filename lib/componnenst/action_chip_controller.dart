import 'package:flutter/material.dart';
import 'package:inter_autismo/models/action_chip_model.dart';

import '../../../style_guide.dart';

// ignore: must_be_immutable
class ActionChipController extends StatelessWidget {
  ActionChipModel actionChipModel;

  ActionChipController({Key? key, required this.actionChipModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: ActionChip(
        avatar: Icon(
          actionChipModel.icon,
          color: branco,
        ),
        label: Text(
          actionChipModel.category,
          style: kStyleTitle.copyWith(
            color: branco,
          ),
        ),
        backgroundColor: actionChipModel.isActicve == true
            ? amarelo
            : preto.withOpacity(0.1),
        onPressed: () {},
      ),
    );
  }
}
