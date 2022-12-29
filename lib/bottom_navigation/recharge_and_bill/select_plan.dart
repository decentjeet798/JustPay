import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/entry_field.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/routes/page_routes.dart';

class SelectPlan extends StatelessWidget {
  const SelectPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Row(
            children: [
              Image.asset(
                Assets.provider5,
                height: 32,
              ),
              SizedBox(
                width: 28,
              ),
              Text(
                'Lyca Prepaid',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 17),
              )
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                  child: EntryField(
                    hint: S.of(context).search_for_the_plan,
                    suffix: Icon(Icons.search),
                  ),
                ),
                TabBar(
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 12),
                    labelColor: Theme.of(context).primaryColor,
                    indicatorColor: Theme.of(context).primaryColor,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        text: S.of(context).recommended,
                      ),
                      Tab(
                        text: S.of(context).data_addon,
                      ),
                      Tab(
                        text: S.of(context).isd,
                      ),
                      Tab(
                        text: S.of(context).international,
                      ),
                      Tab(
                        text: S.of(context).top_up,
                      ),
                    ])
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          buildListView(),
          buildListView(),
          buildListView(),
          buildListView(),
          buildListView(),
        ]),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 20),
          itemCount: 10,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, PageRoutes.rechargeAmount);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index%2==0?'\$0.05':'\$1.20',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 16),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).validity,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            S.of(context).plan,
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontSize: 11, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 12,),
                        ],
                      ),
                    ),
                    Spacer(flex: 2,),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    ), ],
                ),
              ),
            );
          },
        );
  }
}
