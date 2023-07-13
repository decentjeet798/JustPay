import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/routes/page_routes.dart';
import 'package:YaPay/theme/style.dart';
import 'package:YaPay/.env.dart';
import 'package:YaPay/components/dismiss_focus_overlay.dart';


import 'auth/login_navigator.dart';
import 'language_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey = stripePublishableKey;
  Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
  Stripe.urlScheme = 'flutterstripe';
  await Stripe.instance.applySettings();

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
        return DismissFocusOverlay(
          child: MaterialApp(
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
        ),
        );
      },
    );
  }
}
