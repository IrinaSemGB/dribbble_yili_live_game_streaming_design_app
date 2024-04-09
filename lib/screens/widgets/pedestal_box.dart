import 'package:dribbble_yili_live_game_streaming_design_app/constants/images.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/screens/widgets/player_crown.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../models/db.dart';
import '../../models/player.dart';
import 'app_bar_main.dart';

class PedestalBox extends StatelessWidget {

  final double height;
  final double width;

  const PedestalBox({super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {

    final DataBase db = DataBase();
    final List<Player> players = db.getPlayers();

    return SizedBox(
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.confetti,
            fit: BoxFit.fill,
            opacity: const AlwaysStoppedAnimation(.25),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.transparent,
                  AppColors.black,
                  AppColors.black,
                ]
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: height * 0.0866),
              AppBarMain(height: height * 0.1981, width: width),
              Container(
                padding: EdgeInsets.only(left: width * 0.072, right: width * 0.086),
                width: width,
                height: height * 0.6533,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        PlayerCrown(width: width, height: height, player: players[0]),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PlayerCrown(width: width, height: height, player: players[1]),
                        const SizedBox(),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        PlayerCrown(width: width, height: height, player: players[2]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


