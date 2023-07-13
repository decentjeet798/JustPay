import 'package:flutter/material.dart';
import 'package:YaPay/assets/assets.dart';
import 'package:YaPay/components/custom_button.dart';
import 'package:YaPay/components/entry_field.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/routes/page_routes.dart';
import 'package:YaPay/theme/colors.dart';
class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: CustomColor.upDownLinearGradient,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: AppBar(
                titleSpacing: 0,
                iconTheme: IconThemeData(
                    color: Theme.of(context).scaffoldBackgroundColor),
                title: ListTile(
                  leading: CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: CircleAvatar(
                          radius: 22,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(Assets.profile1),
                          ))),
                  title: Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    'q561513@kbl',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                ),
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24))),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Text(
                        S.of(context).today,
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 11),
                      )),
                      Container(
                        decoration: BoxDecoration(
                            color: CustomColor.textFieldColor,
                            borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(6),
                                topStart: Radius.circular(2),
                                bottomEnd: Radius.circular(6),
                                bottomStart: Radius.circular(6))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                        margin: EdgeInsetsDirectional.only(start: 20, top: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ 926.21',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  S.of(context).you_paid,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Theme.of(context).primaryColor,
                                  size: 12,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 12,
              right: 12,
              child: Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    S.of(context).pay,
                    () {
                      Navigator.pushNamed(context, PageRoutes.payAmount);
                    },
                    textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 12),
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: CustomButton(
                    S.of(context).request,
                    () {},
                    textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 12),
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 2,
                    child: EntryField(
                      hint: S.of(context).send_message,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
