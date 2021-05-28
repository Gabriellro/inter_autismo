import 'package:flutter/material.dart';
import 'package:inter_autismo/style_guide.dart';

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
            Stack(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: branco2,
                    borderRadius: BorderRadius.circular(20),
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
