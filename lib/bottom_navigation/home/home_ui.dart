import 'dart:io';

import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/routes/page_routes.dart';
import 'package:payes/theme/colors.dart';

class Recent {
  String image;
  String name;
  Function? onTap;

  Recent(this.image, this.name, {this.onTap});
}

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  static final AdRequest request = AdRequest(
    keywords: <String>['foo', 'bar'],
    contentUrl: 'http://foo.com/bar.html',
    nonPersonalizedAds: true,
  );

  BannerAd? _anchoredBanner;
  bool _loadingAnchoredBanner = false;

  Future<void> _createAnchoredBanner(BuildContext context) async {
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getAnchoredAdaptiveBannerAdSize(
      Orientation.portrait,
      MediaQuery.of(context).size.width.truncate(),
    );

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    final BannerAd banner = BannerAd(
      size: size,
      request: request,
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('$BannerAd loaded.');
          setState(() {
            _anchoredBanner = ad as BannerAd?;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
      ),
    );
    return banner.load();
  }

  @override
  void dispose() {
    super.dispose();
    _anchoredBanner?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Recent> recentTransactions = [
      Recent(Assets.profile1, 'John'),
      Recent(Assets.profile2, 'Rodger'),
      Recent(Assets.profile3, 'Franz'),
      Recent(Assets.profile4, 'Rebecca'),
      Recent(Assets.profile5, 'Emili'),
      Recent(Assets.profile6, 'Samantha'),
      Recent(Assets.profile7, 'Haydon'),
    ];
    List<Recent> rechargeNBill = [
      Recent(Assets.recharge, S.of(context).recharge, onTap: () {
        Navigator.pushNamed(context, PageRoutes.mobileRecharge);
      }),
      Recent(Assets.electricity, S.of(context).electricity, onTap: () {
        Navigator.pushNamed(context, PageRoutes.electricityRecharge);
      }),
      Recent(Assets.gas, S.of(context).gas_bill),
      Recent(Assets.card, S.of(context).atm),
      Recent(Assets.recharge, S.of(context).recharge),
      Recent(Assets.electricity, S.of(context).electricity),
      Recent(Assets.gas, S.of(context).gas_bill),
      Recent(Assets.card, S.of(context).atm),
    ];
    return Builder(
      builder: (BuildContext context) {
        if (!_loadingAnchoredBanner) {
          _loadingAnchoredBanner = true;
          _createAnchoredBanner(context);
        }
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: SafeArea(
            child: FadedSlideAnimation(
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: FadedScaleAnimation(
                        Image.asset(
                          Assets.logo2,
                          scale: 3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 18),
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: S.of(context).your_balance + '\n\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: '\$ 926.21',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22))
                          ])),
                          Spacer(),
                          FadedScaleAnimation(
                            Image.asset(
                              Assets.homeImg,
                              scale: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 12, right: 12, top: 12),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(24)),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: buildButtonOption(
                                      context, S.of(context).scan_qr_pay, () {
                                Navigator.pushNamed(
                                    context, PageRoutes.scanPage);
                              })),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                  child: buildButtonOption(
                                      context, S.of(context).money_transfer,
                                      () {
                                Navigator.pushNamed(
                                    context, PageRoutes.selectRecipient);
                              })),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                  child: buildButtonOption(
                                      context, S.of(context).recharge_n_bills,
                                      () {
                                Navigator.pushNamed(
                                    context, PageRoutes.mobileRecharge);
                              })),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(24)),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 56,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Text(
                                  S.of(context).recent_transactions,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                ),
                              ),
                              GridView.builder(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  itemCount: recentTransactions.length + 1,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4),
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        index == recentTransactions.length
                                            ? FadedScaleAnimation(
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .primaryColor,
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: Theme.of(context)
                                                        .scaffoldBackgroundColor,
                                                  ),
                                                ),
                                              )
                                            : FadedScaleAnimation(
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      recentTransactions[index]
                                                          .image),
                                                ),
                                              ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          index == recentTransactions.length
                                              ? S.of(context).more
                                              : recentTransactions[index].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    );
                                  }),
                              if (_anchoredBanner != null)
                                Container(
                                  width: _anchoredBanner!.size.width.toDouble(),
                                  height:
                                      _anchoredBanner!.size.height.toDouble(),
                                  child: AdWidget(ad: _anchoredBanner!),
                                ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Row(
                                  children: [
                                    Text(
                                      S.of(context).recharge_n_bill_payments,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Text(
                                      S.of(context).explore_all,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 74,
                                child: ListView.builder(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 12),
                                    itemCount: rechargeNBill.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: rechargeNBill[index].onTap
                                            as void Function()?,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 18),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: CustomColor
                                                    .textFieldBorder!),
                                          ),
                                          child: Row(
                                            children: [
                                              FadedScaleAnimation(
                                                Image.asset(
                                                  rechargeNBill[index].image,
                                                  height: 14,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                rechargeNBill[index].name,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 12, right: 12, top: 22),
                          child: Row(
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PageRoutes.scanPage);
                                },
                                child: FadedScaleAnimation(
                                  Image.asset(
                                    Assets.pay1,
                                    scale: 2.8,
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PageRoutes.selectRecipient);
                                },
                                child: FadedScaleAnimation(
                                  Image.asset(
                                    Assets.pay2,
                                    scale: 2.8,
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PageRoutes.mobileRecharge);
                                },
                                child: FadedScaleAnimation(
                                  Image.asset(
                                    Assets.pay3,
                                    scale: 2.8,
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      height: 50,
                    ),
                  ],
                ),
              ),
              beginOffset: Offset(0, 0.3),
              endOffset: Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
            ),
          ),
        );
      },
    );
  }

  Widget buildButtonOption(context, String text, Function onTap) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 150,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: CustomColor.lightGradient),
        child: Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Theme.of(context).scaffoldBackgroundColor,
              fontSize: 12,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
