import 'package:dribbble_yili_live_game_streaming_design_app/constants/colors.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/constants/images.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/constants/titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NextMatchInfoBox extends StatelessWidget {
  final double height;
  final double width;

  const NextMatchInfoBox({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.086),
        decoration: BoxDecoration(
          color: AppColors.black,
          boxShadow: [
            BoxShadow(
              color: AppColors.gradientDark,
              blurRadius: width * 0.02,
              offset: Offset(width * -0.015, 0),
            ),
            BoxShadow(
              color: AppColors.gradientDark,
              blurRadius: width * 0.02,
              offset: Offset(width * 0.015, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(width * 0.025),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.07,
            vertical: width * 0.07,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.console),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(),
                  Text(
                    AppTitles.next,
                    style: GoogleFonts.roboto(
                      color: AppColors.violet,
                      fontSize: width * 0.03,
                    ),
                  ),
                  Text(
                    AppTitles.time,
                    style: GoogleFonts.roboto(
                      color: AppColors.grey,
                      fontSize: width * 0.034,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.34,
                child: Image.asset(AppImages.players, fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}