import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class AppBarMain extends StatelessWidget {

  final double height;
  final double width;

  const AppBarMain({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: height,
      padding: EdgeInsets.only(left: width * 0.072),
      child: Icon(
        Icons.arrow_back_outlined,
        color: AppColors.grey,
        size: width * 0.06,
      ),
    );
  }
}