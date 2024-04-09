import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../constants/colors.dart';
import '../../models/player.dart';

class PlayerCrown extends StatelessWidget {

  final double width;
  final double height;
  final Player player;

  const PlayerCrown({
    super.key,
    required this.width,
    required this.height,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.265,
      height: height * 0.4241,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: width * 0.087,
            child: Container(
              width: width * 0.265,
              height: width * 0.265,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(player.image),
                ),
                borderRadius: BorderRadius.circular(width * 0.265),
                border: Border.all(
                  width: width * 0.02,
                  color: AppColors.dark,
                ),
              ),
            ),
          ),
          CircleAvatar(
            radius: width * 0.06,
            backgroundColor: AppColors.darkCrown,
            child: Image.asset('assets/${player.status}.png', width: width * 0.14),
          ),
          Positioned(
            bottom: height * 0.05,
            child: GradientText(
              player.name,
              colors: const [AppColors.gold, AppColors.bronze],
              style: GoogleFonts.roboto(
                fontSize: width * 0.04,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              player.from,
              style: GoogleFonts.roboto(
                color: AppColors.grey,
                fontSize: width * 0.03,
              ),
            ),
          ),
        ],
      ),
    );
  }
}