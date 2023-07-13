import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:YaPay/assets/assets.dart';
import 'package:YaPay/bottom_navigation/home/home_ui.dart';
import 'package:YaPay/components/entry_field.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/routes/page_routes.dart';

class DTHRecharge extends StatelessWidget {
  const DTHRecharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Recent> dthOperators = [
      Recent(Assets.dth1, 'A. tech Network'),
      Recent(Assets.dth2, 'RD Group'),
      Recent(Assets.dth3, 'Urus Cable'),
      Recent(Assets.dth1, 'Arkay Network'),
      Recent(Assets.dth2, 'John Cable'),
      Recent(Assets.dth3, 'Dgi Connection'),
      Recent(Assets.dth1, 'A. tech Network'),
      Recent(Assets.dth2, 'RD Group'),
      Recent(Assets.dth3, 'Urus Cable'),
      Recent(Assets.dth1, 'Arkay Network'),
      Recent(Assets.dth2, 'John Cable'),
      Recent(Assets.dth3, 'Dgi Connection'),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          Text(
            S.of(context).select_dth,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 16,
          ),
          EntryField(
            hint: S.of(context).select_your_dth,
            suffix: Icon(Icons.search),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Text(
              S.of(context).available_provider,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 16),
              itemCount: dthOperators.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, childAspectRatio: 0.85),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PageRoutes.dthAmount);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadedScaleAnimation(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(dthOperators[index].image),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        dthOperators[index].name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
