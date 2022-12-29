import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/auth_entry_field.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/routes/page_routes.dart';

class MobileRecharge extends StatelessWidget {
  const MobileRecharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).mobile_recharge,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 4,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            children: [
              Row(
                children: [
                  Container(
                    width: 80,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: 18.0),
                          child: CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage(Assets.profile7),
                          ),
                        ),
                        Positioned(
                            left: 36,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(Assets.provider5),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    '+1 456 546 2548',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              AuthEntryField(S.of(context).name,
                  TextEditingController(text: 'Abrey Nicci')),
              SizedBox(
                height: 16,
              ),
              AuthEntryField(
                '',
                TextEditingController(text: 'Lyca prepaid - All Circles'),
                suffix: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: S.of(context).by_continuing_you_agree,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 11)),
                      TextSpan(
                          text: S.of(context).terms_of_services,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 11,
                              color: Theme.of(context).primaryColor)),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(S.of(context).continuee, () {
                    Navigator.pushNamed(context, PageRoutes.selectPlan);
                  })
                ],
              ))
        ],
      ),
    );
  }
}
