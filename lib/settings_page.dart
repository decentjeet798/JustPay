import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/app_config.dart';
import 'language_cubit.dart';

class Settings extends StatefulWidget {
  final bool fromRoot;

  Settings([this.fromRoot = false]);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('change_language',
            style: Theme.of(context).appBarTheme.textTheme!.bodyText1),
      ),
      body: FadedSlideAnimation(
        Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 58.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'select_language',
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
                        title: Text(AppConfig
                            .languagesSupported[AppConfig
                                .languagesSupported.keys
                                .elementAt(index)]!
                            ),
                      ),
                    );
                  },
                ),
              ],
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: CustomButton(
            //     context.getTranslationOf('continue_text'),
            //     () {
            //       if (widget.fromRoot)
            //         Navigator.pushNamed(context, LoginRoutes.loginPage);
            //       else
            //         Navigator.pop(context);
            //     },
            //     borderRadius: BorderRadius.zero,
            //   ),
            // ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
