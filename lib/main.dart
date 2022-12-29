import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/routes/page_routes.dart';
import 'package:payes/theme/style.dart';

import 'auth/login_navigator.dart';
import 'language_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(MultiBlocProvider(providers: [
    BlocProvider<LanguageCubit>(
        create: (context) => LanguageCubit()..getCurrentLanguage()),
  ], child: Phoenix(child: MyApp())));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        return MaterialApp(
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: locale,
          theme: appTheme,
          home: LoginNavigator(),
          routes: PageRoutes().routes(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
