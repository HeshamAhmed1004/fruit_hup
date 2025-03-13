
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hup/generated/l10n.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class FruitHup extends StatelessWidget {
  const FruitHup({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData
          (
          fontFamily: 'Cairo',
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: Routes.splashView,
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar'),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
