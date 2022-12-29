import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/auth_entry_field.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/theme/colors.dart';

class ElectricityAmount extends StatelessWidget {
  const ElectricityAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration:
                BoxDecoration(gradient: CustomColor.upDownLinearGradient),
          ),
          Column(
            children: [
              AppBar(
                iconTheme: IconThemeData(
                    color: Theme.of(context).scaffoldBackgroundColor),
              ),
              ListTile(
                leading:
                FadedScaleAnimation( CircleAvatar(radius: 28, child: Image.asset(Assets.elec1))),
                title: Text(
                  S.of(context).paying + ' Beyond Power',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 16),
                ),
                subtitle: Text(
                  S.of(context).subscriber_id + ' 165165165',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
                    children: [
                      AuthEntryField(
                        S.of(context).enter_amount,
                        TextEditingController(text: '\$ 15.08'),
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: CustomButton(S.of(context).pay_now.toUpperCase(), () {
                Navigator.pop(context);
              }))
        ],
      ),
    );
  }
}
