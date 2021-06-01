import 'package:flutter/material.dart';
import 'package:inter_autismo/models/destaques_model.dart';

import '../../../style_guide.dart';

// ignore: must_be_immutable
class DestaquesController extends StatefulWidget {
  DestaquesModel destaquesModel;
  DestaquesController({
    Key? key,
    required this.destaquesModel,
  }) : super(key: key);
  @override
  _DestaquesControllerState createState() => _DestaquesControllerState();
}

class _DestaquesControllerState extends State<DestaquesController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 250,
              height: 250,
              child: Image.asset(
                widget.destaquesModel.bg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 165),
                Text(
                  widget.destaquesModel.titulo,
                  style: kStyleTitle2.copyWith(color: branco),
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          widget.destaquesModel.profilePic,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: widget.destaquesModel.name + "\n",
                            style: kStyleSubTitle.copyWith(color: branco),
                          ),
                          TextSpan(
                            text: widget.destaquesModel.date,
                            style: kStyleDate.copyWith(
                              color: branco.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
