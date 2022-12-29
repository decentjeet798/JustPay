import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/auth_entry_field.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/theme/colors.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class Transaction {
  String image;
  String name;
  String date;
  String amount;

  Transaction(this.image, this.name, this.date, this.amount);
}

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  bool addNewAccount = false;

  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = [
      Transaction(Assets.profile1, 'John Doe',
          '20 ' + S.of(context).january + ', 2019', '\$ 27.50'),
      Transaction(Assets.profile2, 'Franz Ferdinand',
          '20 ' + S.of(context).january + ', 2019', '- \$ 120.00'),
      Transaction(Assets.profile3, 'Rebecca Moody',
          '20 ' + S.of(context).january + ', 2019', '\$ 45.95'),
      Transaction(Assets.profile4, 'John Doe',
          '20 ' + S.of(context).january + ', 2019', '\$ 27.50'),
      Transaction(Assets.profile5, 'Franz Ferdinand',
          '20 ' + S.of(context).january + ', 2019', '- \$ 120.00'),
      Transaction(Assets.profile6, 'Rebecca Moody',
          '20 ' + S.of(context).january + ', 2019', '\$ 45.95'),
    ];
    List<Widget> itemsList = [
      Container(
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.cardBg), fit: BoxFit.fill),
        ),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  Assets.provider5,
                  height: 24,
                  width: 24,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  S.of(context).bank_of_cali,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 12),
                ),
                Spacer(),
                Icon(
                  Icons.check_circle,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  size: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  S.of(context).primary,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '**** **** **** 8484',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 15,
                  letterSpacing: 1.4),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Ranjeet Kumar',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 11),
                ),
                Spacer(),
                Icon(
                  Icons.delete,
                  size: 20,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  S.of(context).remove,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 11),
                )
              ],
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            addNewAccount = true;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0),
          child: DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: [6, 4],
            radius: Radius.circular(8),
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.zero,
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xffE8EFF8),
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsetsDirectional.only(start: 18, top: 15, end: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.add,
                          color: Color(0xffE8EFF8),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        S.of(context).add_new_account.toUpperCase(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      Assets.cardImage,
                      height: 85,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    S.of(context).my_accounts,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: CarouselSlider(
                      items: itemsList,
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        aspectRatio: 1.95,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                      )),
                ),
                if (!addNewAccount)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(24)),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          buildTitleAmountColumn(
                              context, S.of(context).balance, '\$926.21'),
                          Expanded(
                            child: VerticalDivider(
                              indent: 6,
                              endIndent: 8,
                            ),
                          ),
                          buildTitleAmountColumn(
                              context, S.of(context).income, '\$1,450.00',
                              color: Colors.green),
                          Expanded(
                            child: VerticalDivider(
                              indent: 6,
                              endIndent: 8,
                            ),
                          ),
                          buildTitleAmountColumn(
                              context, S.of(context).spent, '\$1,246.54',
                              color: Colors.red),
                        ],
                      ),
                    ),
                  )
                else
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Theme.of(context).scaffoldBackgroundColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).account_information,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        AuthEntryField(S.of(context).account_number,
                            TextEditingController(text: '1263545354131561')),
                        SizedBox(
                          height: 20,
                        ),
                        AuthEntryField(S.of(context).ifsc_code,
                            TextEditingController(text: 'BOCC1246C')),
                        SizedBox(
                          height: 20,
                        ),
                        AuthEntryField(S.of(context).account_holder_name,
                            TextEditingController(text: 'Ranjeet Kumar')),
                        SizedBox(
                          height: 40,
                        ),
                        CustomButton(S.of(context).verify_account.toUpperCase(),
                            () {
                          setState(() {
                            addNewAccount = false;
                          });
                        }),
                      ],
                    ),
                  ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: !addNewAccount
            ? SolidBottomSheet(
                canUserSwipe: false,
                minHeight: MediaQuery.of(context).size.height / 3,
                maxHeight: MediaQuery.of(context).size.height / 3,
                headerBar: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color:
                                CustomColor.textFieldBorder!.withOpacity(0.4),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset.fromDirection(5, 5)),
                      ],
                      borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(24)),
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 80),
                          decoration: BoxDecoration(
                              color: CustomColor.textFieldBorder,
                              borderRadius: BorderRadius.circular(50)),
                          height: 4,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            TabBar(
                              isScrollable: true,
                              labelColor: Theme.of(context).primaryColor,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 16),
                              indicatorSize: TabBarIndicatorSize.values[0],
                              indicatorWeight: 0.00001,
                              tabs: [
                                Tab(
                                  text: S.of(context).all,
                                ),
                                Tab(
                                  text: S.of(context).sent,
                                ),
                                Tab(
                                  text: S.of(context).received,
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: CustomColor.textFieldBorder,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    buildListView(transactions),
                    buildListView(transactions),
                    buildListView(transactions),
                  ],
                ),
              )
            : null,
      ),
    );
  }

  ListView buildListView(List<Transaction> transactions) {
    return ListView.builder(
        itemCount: transactions.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Theme.of(context).scaffoldBackgroundColor,
            dense: true,
            leading: FadedScaleAnimation(
              Image.asset(
                transactions[index].image,
                height: 38,
              ),
            ),
            title: Text(
              transactions[index].name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.w700),
            ),
            subtitle: Text(
              transactions[index].date,
              style:
                  Theme.of(context).textTheme.caption!.copyWith(fontSize: 11),
            ),
            trailing: Text(
              transactions[index].amount,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: !transactions[index].amount.contains('-')
                      ? Colors.green
                      : Colors.red),
            ),
          );
        });
  }

  Widget buildTitleAmountColumn(
      BuildContext context, String title, String amount,
      {Color? color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 11),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          amount,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 18, color: color),
        )
      ],
    );
  }
}
