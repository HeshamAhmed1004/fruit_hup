import 'package:flutter/material.dart';

import 'core/helpers/shared_preferences_singleton.dart';
import 'core/routing/app_router.dart';
import 'fruit_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp( FruitHup(appRouter: AppRouter(),));
}
