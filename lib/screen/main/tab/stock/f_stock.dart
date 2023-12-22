import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/common/widget/w_image_button.dart';
import 'package:toss_clone/screen/main/s_main.dart';

import 'tab/f_my_stock.dart';
import 'tab/f_today_discovery.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigationHeight),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: context.appColors.appBarBackground,
            surfaceTintColor: context.appColors.appBarBackground,
            pinned: true,
            actions: [
              ImageButton(
                imagePath: "$basePath/icon/stock_search.png",
                onTap: () {
                  context.showSnackbar("검색");
                },
              ),
              ImageButton(
                imagePath: "$basePath/icon/stock_calendar.png",
                onTap: () {
                  context.showSnackbar("캘린더");
                },
              ),
              ImageButton(
                imagePath: "$basePath/icon/stock_settings.png",
                onTap: () {
                  context.showSnackbar("설정");
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                title,
                tabBar,
                if(currentIndex == 0)
                  const MyStockFragment()
                else
                  const TodayDiscoveryFragment()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get title => Container(
    child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(24).bold.make(),
            width20,
            "S&P 500"
                .text
                .size(13)
                .bold
                .color(context.appColors.lessImportant)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make(),
          ],
        ).pOnly(left: 20),
  );

  Widget get tabBar => Container(
    child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() => currentIndex = index);
              },
              controller: tabController,
              labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              labelPadding: const EdgeInsets.symmetric(vertical: 20),
              indicatorColor: Colors.white,
              tabs: [
                '내 주식'.text.make(),
                '오늘의 발견'.text.make(),
              ],
            ),
            // const Line(),
          ],
        ),
  );

}
