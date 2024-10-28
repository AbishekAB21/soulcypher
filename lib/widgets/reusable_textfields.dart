// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:soulcypher/utils/app_colors.dart';
import 'package:soulcypher/utils/font_styles.dart';

class ReusableTextfield extends StatelessWidget {
  TextEditingController cntrlr;
  Icon prefixicon;
  String title;

   ReusableTextfield({super.key, required this.prefixicon, required this.title, required this.cntrlr});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: appcolor.textfieldColor
              ),
              child: TextFormField(
                controller: cntrlr,
                style: Fontstyles.ContentTextStyle3(context),
                decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: appcolor.textfieldColor)),
            isDense: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: appcolor.borderColor2)),
            hintText: title,
            hintStyle: Fontstyles.lightTextStyle(context),
            label: Text(
              title,
              style: Fontstyles.lightTextStyle(context),
            ),
            hintFadeDuration: Durations.medium2,
            prefixIcon: prefixicon,
            prefixIconColor: appcolor.borderColor
            ),
              ),
            );
  }
}