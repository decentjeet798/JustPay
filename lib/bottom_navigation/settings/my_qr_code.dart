import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/theme/colors.dart';

class MyQrCode extends StatelessWidget {
  const MyQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 4,
        title: Text(
          S.of(context).my_qr_code,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 3,
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8),
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Material(
                    clipBehavior: Clip.antiAlias,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Assets.qrCode,
                            scale: 3,
                          ),
                          FadedScaleAnimation(
                             CircleAvatar(
                              radius: 32,
                              backgroundColor: CustomColor.blackColor,
                              child: Image.asset(
                                Assets.profile4,
                                height: 58,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.bankIcon, height: 24,),
                        SizedBox(width: 8,),
                        Text('BOCC. - 8484', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24),
            child: CustomButton(S.of(context).download, (){}),
          ),
        ],
      ),
    );
  }
}
