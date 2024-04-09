import 'package:dribbble_yili_live_game_streaming_design_app/constants/colors.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/screens/widgets/next_match_info_box.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/screens/widgets/pedestal_box.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/screens/widgets/prize_fund_box.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/screens/widgets/text_info_box.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PedestalBox(height: height * 0.5349, width: width),
            PrizeFundBox(height: height * 0.3677, width: width),
            TextInfoBox(height: height * 0.1275, width: width),
            SizedBox(height: height * 0.0132),
            NextMatchInfoBox(height: height * 0.1292, width: width),
            SizedBox(height: height * 0.0397),
          ],
        ),
      ),
    );
  }
}






