import 'package:dribbble_yili_live_game_streaming_design_app/constants/titles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class TextInfoBox extends StatelessWidget {

  final double height;
  final double width;

  const TextInfoBox({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.076,
        vertical: height * 0.01,
      ),
      child: Text(
        AppTitles.text,
        overflow: TextOverflow.fade,
        style: GoogleFonts.roboto(
          color: AppColors.grey,
          fontSize: width * 0.034,
        ),
      ),
    );
  }
}