import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/action_chip_controller.dart';

import 'package:inter_autismo/models/action_chip_model.dart';
import 'package:inter_autismo/models/destaques_model.dart';
import 'package:inter_autismo/screens/blog/components/polular_controller.dart';

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
                Container(
                  padding: EdgeInsets.only(left: 24),
                  width: 360,
                  height: 52,
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: exploreChiplist.length,
                      itemBuilder: (context, index) => ActionChipController(
                        actionChipModel: exploreChiplist[index],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 24, top: 20),
                  width: 360,
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
