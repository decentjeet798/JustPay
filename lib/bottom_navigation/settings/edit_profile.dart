import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/auth_entry_field.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/theme/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 5,
        title: Text(
          S.of(context).edit_profile,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
        ),
      ),
      body: Stack(
        children: [
          FadedSlideAnimation(
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              children: [
                Row(
                  children: [
                    FadedScaleAnimation(
                      Image.asset(
                        Assets.profile4,
                        scale: 1.3,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: CustomColor.textFieldBorder!)),
                      child: Text(
                        S.of(context).update_my_photo,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  S.of(context).profile_information,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                AuthEntryField(S.of(context).name,
                    TextEditingController(text: 'Ranjeet Kumar')),
                SizedBox(
                  height: 12,
                ),
                AuthEntryField(S.of(context).email,
                    TextEditingController(text: 'ranjeet@cpaypayments.com')),
                SizedBox(
                  height: 20,
                ),
                AuthEntryField(S.of(context).mobile_number,
                    TextEditingController(text: '+91 9206172077')),
                SizedBox(
                  height: 30,
                ),
                Text(
                  S.of(context).destination_address,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                AuthEntryField(S.of(context).country,
                    TextEditingController(text: S.of(context).united_states)),
                SizedBox(
                  height: 12,
                ),
                AuthEntryField(S.of(context).state,
                    TextEditingController(text: 'California')),
                SizedBox(
                  height: 20,
                ),
                AuthEntryField(S.of(context).city,
                    TextEditingController(text: 'Los Angeles')),
                SizedBox(
                  height: 120,
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
              child: CustomButton(S.of(context).update, () {
                Navigator.pop(context);
              }))
        ],
      ),
    );
  }
}
