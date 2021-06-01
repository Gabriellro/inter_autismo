import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/section_title.dart';
import 'package:inter_autismo/models/ajuda_rapida_model.dart';
import 'package:inter_autismo/models/destaques_model.dart';
import 'package:inter_autismo/screens/home/components/destaques_controller.dart';
import 'package:inter_autismo/screens/home/components/polular_controller.dart';

import '../../../style_guide.dart';
import 'ajudar_rapida_controller.dart';
import 'header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Header(),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: "Ajuda rápida", press: () {}),
                Container(
                  padding: EdgeInsets.only(left: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 125,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: ajudaRapidalist.length,
                    itemBuilder: (context, index) => AjudaRapidaController(
                      ajudaRapidaModel: ajudaRapidalist[index],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Destaques",
                    style: kStyleDisplay.copyWith(
                      color: preto,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  padding: EdgeInsets.only(left: 24),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: destaqueslist.length,
                    itemBuilder: (context, index) => DestaquesController(
                      destaquesModel: destaqueslist[index],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SectionTitle(title: "Popular", press: () {}),
                Container(
                  padding: EdgeInsets.only(left: 24, top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: destaqueslist.length,
                    itemBuilder: (context, index) => PolularController(
                      destaquesModel: destaqueslist[index],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
