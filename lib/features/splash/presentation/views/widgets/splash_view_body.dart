import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/images/plant.svg"),
            ],
          ),
          SvgPicture.asset("assets/images/logo.svg"),
          SvgPicture.asset("assets/images/splash_bottom.svg", fit: BoxFit.fill),
        ],
      ),
    );
  }
}
