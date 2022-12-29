import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/bottom_navigation/home/home_ui.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/routes/page_routes.dart';
import 'package:payes/theme/colors.dart';

class RechargeAndBill extends StatelessWidget {
  const RechargeAndBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Recent> phoneRecharge = [
      Recent(Assets.recharge, S.of(context).recharge, onTap: () {
        Navigator.pushNamed(context, PageRoutes.selectNumber);
      }),
    ];
    List<Recent> billPayment = [
      Recent(Assets.electricity, S.of(context).electricity, onTap: () {
        Navigator.pushNamed(context, PageRoutes.electricityRecharge);
      }),
      Recent(Assets.dthIcon, S.of(context).dth_bill, onTap: () {
        Navigator.pushNamed(context, PageRoutes.dthRecharge);
      }),
      Recent(Assets.card, S.of(context).credit_card, onTap: () {
        Navigator.pushNamed(context, PageRoutes.addCreditCard);
      }),
      Recent(Assets.gas, S.of(context).gas_bill),
      Recent(Assets.broadband, S.of(context).broadband, onTap: () {
        Navigator.pushNamed(context, PageRoutes.dthRecharge);
      }),
    ];
    List<Recent> finance = [
      Recent(Assets.homeEmi, S.of(context).home_emi),
      Recent(Assets.govtTax, S.of(context).govt_taxes),
      Recent(Assets.insurance, S.of(context).insurance),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: FadedSlideAnimation(
        ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 16, top: 36, end: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).recharge +
                        ' &' +
                        '\n' +
                        S.of(context).bill_payments,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(
                      Assets.cardImage,
                      scale: 3,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeadingText(context, S.of(context).phone_recharge),
                  SizedBox(
                    height: 16,
                  ),
                  buildGridView(phoneRecharge),
                  SizedBox(
                    height: 24,
                  ),
                  buildHeadingText(context, S.of(context).bill_payment),
                  SizedBox(
                    height: 16,
                  ),
                  buildGridView(billPayment),
                  SizedBox(
                    height: 24,
                  ),
                  buildHeadingText(context, S.of(context).finance_n_taxes),
                  SizedBox(
                    height: 16,
                  ),
                  buildGridView(finance),
                  SizedBox(
                    height: 50,
                  ),
                ],
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

  GridView buildGridView(List<Recent> list) {
    return GridView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.35, //45
            crossAxisSpacing: 10,
            mainAxisSpacing: 12),
        itemBuilder: (context, index) {
          return buildOptionContainer(
              context, list[index].image, list[index].name, list[index].onTap);
        });
  }

  Text buildHeadingText(BuildContext context, String heading) {
    return Text(
      heading,
      style: Theme.of(context)
          .textTheme
          .caption!
          .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
    );
  }

  Widget buildOptionContainer(
      BuildContext context, String image, String title, Function? onTap) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: FadedScaleAnimation(
        Container(
          padding: EdgeInsetsDirectional.fromSTEB(12, 10, 24, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(color: CustomColor.textFieldBorder!, width: 0.5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                scale: 2.8,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
