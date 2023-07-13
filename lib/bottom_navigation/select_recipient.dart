import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:YaPay/assets/assets.dart';
import 'package:YaPay/components/entry_field.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/routes/page_routes.dart';

import 'home/home_ui.dart';

class SelectRecipient extends StatelessWidget {
  const SelectRecipient({Key? key}) : super(key: key);

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
    int a = 64;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).select_recipient,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 16,
            ),
            EntryField(
              hint: S.of(context).search_contact,
              suffix: Icon(Icons.search),
            ),
            SizedBox(
              height: 16,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  a++;
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PageRoutes.sendMoney);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Text(
                            String.fromCharCode(a),
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: recentTransactions.length,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  index == recentTransactions.length
                                      ? FadedScaleAnimation(
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Theme.of(context).primaryColor,
                                            child: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                            ),
                                          ),
                                        )
                                      : FadedScaleAnimation(
                                          child: CircleAvatar(
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
                            })
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 32,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
