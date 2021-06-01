import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/section_title.dart';
import 'package:inter_autismo/models/ajuda_rapida_model.dart';
import 'package:inter_autismo/models/destaques_model.dart';
import 'package:inter_autismo/screens/home/components/destaques_controller.dart';

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
                  width: 360,
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
                  width: 360,
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
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                            "assets/images/peixinho-pulando.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Brincadeira\n".toUpperCase(),
                              style: kStyleDate.copyWith(color: azulClaro),
                            ),
                            TextSpan(
                              text: "Peixinho fora d'água\n",
                              style: kStyleSubTitle.copyWith(color: preto),
                            ),
                            TextSpan(
                              text: "Annie Silva | ",
                              style: kStyleDate.copyWith(
                                  color: preto.withOpacity(0.5)),
                            ),
                            TextSpan(
                              text: "4 dias atrás",
                              style: kStyleDate.copyWith(
                                  color: preto.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
