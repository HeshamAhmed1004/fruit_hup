import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/core/helpers/constant.dart';
import 'package:fruit_hup/core/helpers/shared_preferences_singleton.dart';
import 'package:fruit_hup/core/helpers/spacing.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import 'package:fruit_hup/core/theming/styles.dart';
import 'package:fruit_hup/core/helpers/extension.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subTitle,
      required this.title, required this.isVisible});

  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final  bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingShow,true);
                    context.pushReplacementNamed(Routes.signInView);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('تخط',
                        style: TextStyles.regular13.copyWith(
                          color: Color(0xFF949D9E),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpacing(64),
        title,
        verticalSpacing(24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: Color(0xFF4E5556),
            ),
          ),
        ),
      ],
    );
  }
}
