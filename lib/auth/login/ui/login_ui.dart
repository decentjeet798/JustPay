import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/auth/login_navigator.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/theme/colors.dart';
import 'login_interactor.dart';

class LoginUI extends StatefulWidget {
  final LoginInteractor loginInteractor;

  LoginUI(this.loginInteractor);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final TextEditingController _numberController = TextEditingController();
  String isoCode = '+1';

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(
  //       Duration(seconds: 4), () => BuyThisApp.showSubscribeDialog(context));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadedSlideAnimation(
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(
                  flex: 4,
                ),
                FadedScaleAnimation(
                  Image.asset(
                    Assets.signInImage,
                    scale: 3.2,
                  ),
                ),
                Spacer(),
                Text(
                  S.of(context).phone_verification,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                    S.of(context).we_need_to_register +
                        '\n' +
                        S.of(context).getting_started,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(height: 1.2),
                    textAlign: TextAlign.center),
                Spacer(
                  flex: 2,
                ),
                Container(
                  height: 54,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: CustomColor.textFieldBorder!, width: 0.4)),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              Assets.indiaFlag,
                              height: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 18,
                            ),
                          ],
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: S.of(context).enter_your_number),
                    controller:
                        TextEditingController(text: ' +91 9206172077'),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(S.of(context).send_the_code.toUpperCase(), () {
                  Navigator.pushNamed(context, LoginRoutes.registration);
                }),
                SizedBox(
                  height: 30,
                ),
                // Spacer(),
              ],
            ),
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
