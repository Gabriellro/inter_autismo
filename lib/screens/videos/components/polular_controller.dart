import 'package:flutter/material.dart';
import 'package:inter_autismo/models/destaques_model.dart';

import '../../../style_guide.dart';

// ignore: must_be_immutable
class PolularController extends StatefulWidget {
  DestaquesModel destaquesModel;

  PolularController({
    Key? key,
    required this.destaquesModel,
  }) : super(key: key);

  @override
  _PolularControllerState createState() => _PolularControllerState();
}

class _PolularControllerState extends State<PolularController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 80,
              height: 80,
              child: Image.asset(
                widget.destaquesModel.bg,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(width: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Brincadeiras\n",
                  style: kStyleDate.copyWith(color: azulClaro),
                ),
                TextSpan(
                  text: widget.destaquesModel.titulo + "\n",
                  style: kStyleSubTitle.copyWith(color: preto),
                ),
                TextSpan(
                  text: widget.destaquesModel.name + " | ",
                  style: kStyleDate.copyWith(color: preto.withOpacity(0.5)),
                ),
                TextSpan(
                  text: widget.destaquesModel.date,
                  style: kStyleDate.copyWith(color: preto.withOpacity(0.5)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
