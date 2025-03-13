import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/core/helpers/extension.dart';
import 'package:fruit_hup/core/routing/routes.dart';

import '../../../../../core/helpers/constant.dart';
import '../../../../../core/helpers/shared_preferences_singleton.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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

  void executeNavigation() {
    bool isOnBoardingShow = Prefs.getBool(kIsOnBoardingShow);

    Future.delayed(const Duration(seconds: 3), () {
      if(isOnBoardingShow){
         context.pushReplacementNamed(Routes.signInView);
       }
       else{
         context.pushReplacementNamed(Routes.onBoardingView);
       }
    });
  }
}
