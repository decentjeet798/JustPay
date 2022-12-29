import 'package:flutter/material.dart';
import 'package:payes/auth/add_bank/add_bank_page.dart';
import 'package:payes/bottom_navigation/settings/select_language.dart';
import 'package:payes/routes/page_routes.dart';
import 'verification/ui/verification_page.dart';
import 'login/ui/login_page.dart';
import 'registration/ui/registration_page.dart';


class LoginRoutes {
  static const String loginRoot = 'login/language';
  static const String loginPage = 'login/login';
  static const String registration = 'login/registration';
  static const String verification = 'login/verification';
  static const String addBank = 'login/add_bank';
}

class LoginNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState!.canPop();
        if (canPop) {
          navigatorKey.currentState!.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: LoginRoutes.loginRoot,
        onGenerateRoute: (RouteSettings settings) {
           late WidgetBuilder builder;
          switch (settings.name) {
            case LoginRoutes.loginRoot:
              builder = (BuildContext _) => SelectLanguage(true);
              break;
            case LoginRoutes.loginPage:
              builder = (BuildContext _) => LoginPage();
              break;
            case LoginRoutes.registration:
              builder = (BuildContext _) => RegistrationPage();
              break;
            case LoginRoutes.verification:
              builder = (BuildContext _) =>
                  VerificationPage(settings.arguments as String?);
              break;
            case LoginRoutes.addBank:
              builder = (BuildContext _) =>
                  AddBankPage(settings.arguments as String?, () {
                    Navigator.popAndPushNamed(
                        context, PageRoutes.bottomNav);
                  });
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
