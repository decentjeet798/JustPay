import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:YaPay/auth/login_navigator.dart';
import 'package:YaPay/components/custom_button.dart';
import 'package:YaPay/config/app_config.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/language_cubit.dart';

class SelectLanguage extends StatefulWidget {
  final bool fromRoot;

  SelectLanguage([this.fromRoot = false]);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).change_language,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16)),
      ),
      body: FadedSlideAnimation(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 58.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.of(context).select_language,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                BlocBuilder<LanguageCubit, Locale>(
                  builder: (context, state) {
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: AppConfig.languagesSupported.length,
                      itemBuilder: (context, index) => RadioListTile(
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (dynamic value) {
                          print(value);
                          BlocProvider.of<LanguageCubit>(context)
                              .setCurrentLanguage(value as String);
                        },
                        groupValue: state.languageCode,
                        value:
                            AppConfig.languagesSupported.keys.elementAt(index),
                        title: Text(AppConfig.languagesSupported[AppConfig
                            .languagesSupported.keys
                            .elementAt(index)]!),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                child: CustomButton(
                  S.of(context).continuee,
                  () {
                    if (widget.fromRoot)
                      Navigator.pushNamed(context, LoginRoutes.loginPage);
                    else
                      Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
