import 'package:dribbble_yili_live_game_streaming_design_app/constants/colors.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/constants/images.dart';
import 'package:dribbble_yili_live_game_streaming_design_app/constants/titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gradient_clipper.dart';

class PrizeFundBox extends StatelessWidget {

  final double height;
  final double width;

  const PrizeFundBox({super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: GradientClipper(),
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.gradientLight, AppColors.black],
                )
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width,
              height: height * 0.3378,
              padding: EdgeInsets.only(bottom: height * 0.0585),
              child: SizedBox(
                width: width * 0.4122,
                height: height * 0.1441,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: width * 0.4122,
                      height: width * 0.01,
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        border: const Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: AppColors.grey,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(width * 0.01),
                      ),
                    ),
                    Positioned(
                      bottom: width * 0.003,
                      child: Container(
                        alignment: Alignment.center,
                        width: width * 0.38,
                        height: height * 0.1441,
                        decoration: BoxDecoration(
                          color: AppColors.gold,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(width * 0.02),
                            topRight: Radius.circular(width * 0.02),
                          ),
                        ),
                        child: Text(
                          AppTitles.match,
                          style: GoogleFonts.roboto(
                            color: AppColors.darkCrown,
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.4122,
                      height: width * 0.01,
                      decoration: BoxDecoration(
                        color: AppColors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black,
                            blurRadius: width * 0.035,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Table(
              columnWidths: const {
                0: FractionColumnWidth(.22),
                1: FractionColumnWidth(.43),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.045),
                        child: const Text(''),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        AppTitles.cash,
                        style: GoogleFonts.inter(
                          color: AppColors.grey,
                          fontSize: width * 0.028,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        AppTitles.point,
                        style: GoogleFonts.inter(
                          color: AppColors.grey,
                          fontSize: width * 0.028,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Image.asset(
                        AppImages.laurel1,
                        height: width * 0.11,
                        width: width * 0.11,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.055),
                        child: Text(
                          '\$500 ${AppTitles.usd}',
                          style: GoogleFonts.inter(
                            color: AppColors.white,
                            fontSize: width * 0.038,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        '12,000 ${AppTitles.gpts}',
                        style: GoogleFonts.inter(
                          color: AppColors.white,
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Image.asset(
                        AppImages.laurel2,
                        height: width * 0.11,
                        width: width * 0.11,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.055),
                        child: Text(
                          '\$200 ${AppTitles.usd}',
                          style: GoogleFonts.inter(
                            color: AppColors.white,
                            fontSize: width * 0.038,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        '9,000 ${AppTitles.gpts}',
                        style: GoogleFonts.inter(
                          color: AppColors.white,
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Image.asset(
                        AppImages.laurel3,
                        height: width * 0.11,
                        width: width * 0.11,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.055),
                        child: Text(
                          '\$100 ${AppTitles.usd}',
                          style: GoogleFonts.inter(
                            color: AppColors.white,
                            fontSize: width * 0.038,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Text(
                        '5,000 ${AppTitles.gpts}',
                        style: GoogleFonts.inter(
                          color: AppColors.white,
                          fontSize: width * 0.038,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

