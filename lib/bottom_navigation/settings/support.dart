import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:YaPay/components/auth_entry_field.dart';
import 'package:YaPay/components/custom_button.dart';
import 'package:YaPay/generated/l10n.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          FadedSlideAnimation(
            child: ListView(
              children: [
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: S.of(context).were_happy_to +
                                '\n' +
                                S.of(context).hear_from_you +
                                '\n',
                            style: Theme.of(context).textTheme.headline6),
                        TextSpan(
                          text: S.of(context).let_us_know_your_queries,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 14, height: 2),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 18),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                        S.of(context).call_us,
                        () {},
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                color: Theme.of(context).primaryColor,
                                letterSpacing: 1),
                        buttonColor: Theme.of(context).scaffoldBackgroundColor,
                        prefixIcon: Icon(
                          Icons.call,
                          size: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                        border: true,
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: CustomButton(
                        S.of(context).mail_us,
                        () {},
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      )),
                    ],
                  ),
                ),
                Divider(
                  thickness: 10,
                  height: 40,
                  color: Theme.of(context).backgroundColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).or_send_your_msg,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AuthEntryField(S.of(context).name,
                          TextEditingController(text: 'John Appleseed')),
                      SizedBox(
                        height: 12,
                      ),
                      AuthEntryField(S.of(context).email,
                          TextEditingController(text: 'info@yapay.com')),
                      SizedBox(
                        height: 12,
                      ),
                      AuthEntryField(
                        S.of(context).message,
                        TextEditingController(text: S.of(context).enter_message),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
            beginOffset: Offset(0, 0.3),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          ),
          Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: CustomButton(S.of(context).submit, () {
                Navigator.pop(context);
              }))
        ],
      ),
    );
  }
}
