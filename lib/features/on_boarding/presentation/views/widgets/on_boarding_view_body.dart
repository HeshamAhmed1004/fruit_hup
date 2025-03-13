import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup/core/helpers/extension.dart';
import 'package:fruit_hup/core/helpers/shared_preferences_singleton.dart';
import 'package:fruit_hup/core/helpers/spacing.dart';
import 'package:fruit_hup/core/theming/color.dart';
import 'package:fruit_hup/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../../core/helpers/constant.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/custom_button.dart';


class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {

      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: OnBoardingPageView(
          pageController: pageController,
        ),
      ),
      DotsIndicator(
        dotsCount: 2,
        decorator: DotsDecorator(
          activeColor: ColorsManger.primaryColor,
          color: currentPage == 1 ? ColorsManger.primaryColor : ColorsManger.primaryColor.withOpacity(.5),
        ),
      ),
      verticalSpacing(29),
      Visibility(
        visible: currentPage == 1?true:false,
        maintainAnimation: true,
        maintainState: true,
        maintainSize: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(
            text: 'ابدأ الان',
            onPressed: () {
              Prefs.setBool(kIsOnBoardingShow,true);
              context.pushReplacementNamed(Routes.signInView);
            },
          ),
        ),
      ),
      verticalSpacing(43),
    ]);
  }
}
