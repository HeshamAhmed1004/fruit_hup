import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hup/core/theming/styles.dart';

import '../../../../../core/theming/color.dart';
import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/page_view_item1_image.svg',
          backgroundImage: 'assets/images/page_view_item1_background_image.svg',
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في ",style: TextStyles.bold23,),
              Text(" Hub",style: TextStyles.bold23.copyWith(color: ColorsManger.secondaryColor),),
              Text("Fruit",style: TextStyles.bold23.copyWith(color: ColorsManger.primaryColor),),
            ],
          ),
          isVisible: true,
        ),
        PageViewItem(
          image: 'assets/images/page_view_item2_image.svg',
          backgroundImage: 'assets/images/page_view_item2_background_image.svg',
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            "ابحث وتسوق",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.w700,
              height: 0.h,
              fontFamily: 'Cairo',
              color: Color(0xff0C0D0D),
            ),
          ),
          isVisible: false,
        ),
      ],
    );
  }
}
