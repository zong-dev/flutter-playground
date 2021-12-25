
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seeing/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({ Key? key, this.width, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_right_alt_outlined, size: 26, color: Colors.white ,),

        ],
      ),
    );
  }
}