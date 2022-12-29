import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:payes/components/auth_entry_field.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';

class AddCreditCard extends StatelessWidget {
  const AddCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          FadedSlideAnimation(
             ListView(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  S.of(context).add_your_credit_card,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  S.of(context).link_your_credit_card,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 50,
                ),
                AuthEntryField(
                  S.of(context).card_number,
                  TextEditingController(text: '1234 5465 1354 31153'),
                ),
                SizedBox(
                  height: 16,
                ),
                AuthEntryField(
                  'Phone',
                  TextEditingController(text: '+1 987 654 3210'),
                ),
              ],
            ),
            beginOffset: Offset(0, 0.3),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          ),
          Positioned(
            bottom: 24,
              left: 16,
              right: 16,
              child: CustomButton(S.of(context).confirm.toUpperCase(), () {
            Navigator.pop(context);
          }))
        ],
      ),
    );
  }
}
