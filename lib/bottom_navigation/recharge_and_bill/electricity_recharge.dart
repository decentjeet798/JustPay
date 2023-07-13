import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:YaPay/assets/assets.dart';
import 'package:YaPay/bottom_navigation/home/home_ui.dart';
import 'package:YaPay/components/entry_field.dart';
import 'package:YaPay/generated/l10n.dart';
import 'package:YaPay/routes/page_routes.dart';

class ElectricityRecharge extends StatelessWidget {
  const ElectricityRecharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Recent> dthOperators = [
      Recent(Assets.elec1, 'A. tech Network'),
      Recent(Assets.elec2, 'RD Group'),
      Recent(Assets.elec3, 'Urus Cable'),
      Recent(Assets.elec1, 'Arkay Network'),
      Recent(Assets.elec2, 'John Cable'),
      Recent(Assets.elec3, 'Dgi Connection'),
      Recent(Assets.elec1, 'A. tech Network'),
      Recent(Assets.elec2, 'RD Group'),
      Recent(Assets.elec3, 'Urus Cable'),
      Recent(Assets.elec1, 'Arkay Network'),
      Recent(Assets.elec2, 'John Cable'),
      Recent(Assets.elec3, 'Dgi Connection'),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          Text(
            S.of(context).electricity,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 16,
          ),
          EntryField(
            hint: S.of(context).search_electricity,
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
                    Navigator.pushNamed(context, PageRoutes.electricityAmount);
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
