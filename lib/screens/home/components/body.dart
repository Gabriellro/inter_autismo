import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/section_title.dart';
import 'package:inter_autismo/models/ajuda_rapida_model.dart';

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
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: SectionTitle(title: "Ajuda rapida", press: () {}),
                ),
                Container(
                  width: 328,
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: ajudaRapidalist.length,
                    itemBuilder: (context, index) => AjudaRapidaController(
                      ajudaRapidaModel: ajudaRapidalist[index],
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
