import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:YaPay/assets/assets.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/routes/page_routes.dart';
import 'package:YaPay/theme/colors.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: CustomColor.blackColor,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'John Appleseed' + '\n',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(height: 1.2)),
                    TextSpan(
                        text: '+1 307 466-0198' + '\n',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(height: 2.8)),
                    TextSpan(
                        text: 'info@yapay.com',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(height: 1.4)),
                  ])),
                ),
                Spacer(),
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PageRoutes.myQrCode);
                    },
                    child: Material(
                      clipBehavior: Clip.antiAlias,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(12),
                      elevation: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 4),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            FadedScaleAnimation(
                              child: Image.asset(
                                Assets.qrCode,
                                scale: 3,
                              ),
                            ),
                            FadedScaleAnimation(
                              child: CircleAvatar(
                                radius: 32,
                                backgroundColor: CustomColor.blackColor,
                                child: Image.asset(
                                  Assets.profile4,
                                  height: 58,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildSettingsOption(
                        context,
                        Icons.account_box,
                        S.of(context).profile_information,
                        S.of(context).everything_about_you, () {
                      Navigator.pushNamed(context, PageRoutes.editProfile);
                    }),
                    buildSettingsOption(
                        context,
                        Icons.live_help_rounded,
                        S.of(context).help_n_support,
                        S.of(context).let_us_help_you, () {
                      Navigator.pushNamed(context, PageRoutes.supportPage);
                    }),
                    buildSettingsOption(
                        context,
                        Icons.language,
                        S.of(context).change_language,
                        S.of(context).choose_preferred_language, () {
                      Navigator.pushNamed(context, PageRoutes.selectLanguage);
                    }),
                    buildSettingsOption(
                        context,
                        Icons.assignment,
                        S.of(context).privacy_policies,
                        S.of(context).terms_and_conditions_of_use, () {
                      Navigator.pushNamed(context, PageRoutes.tncPage);
                    }),
                    buildSettingsOption(context, Icons.exit_to_app,
                        S.of(context).logout, S.of(context).logout, () {
                      Phoenix.rebirth(context);
                    }),

                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: BuyThisApp.button(
                    //       'YaPay', 'https://bit.ly/cc_flutter_YaPay',
                    //       color: Theme.of(context).primaryColor),
                    // ),
                    // BuyThisApp.developerRow(
                    //     Colors.transparent, Theme.of(context).primaryColor),
                  ],
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     alignment: Alignment.bottomCenter,
          //     color: Theme.of(context).scaffoldBackgroundColor,
          //     child: Image.asset(
          //       Assets.signInImage,
          //       scale: 3,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  ListTile buildSettingsOption(BuildContext context, IconData icon,
      String title, String subtitle, Function onTap) {
    return ListTile(
      onTap: onTap as void Function()?,
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.w300),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14,
      ),
    );
  }
}
