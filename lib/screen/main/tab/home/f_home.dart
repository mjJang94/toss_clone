import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/common/widget/w_rounded_container.dart';
import 'package:toss_clone/screen/main/s_main.dart';
import 'package:toss_clone/screen/main/tab/home/w_toss_app_bar.dart';

import '../../../../common/widget/w_big_button.dart';
import 'bank_accounts.dummy.dart';
import 'w_bank_account.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: TossAppbar.appBarHeight,
            onRefresh: () async {
              await sleepAsync(500.milliseconds);
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                  top: TossAppbar.appBarHeight,
                  bottom: MainScreenState.bottomNavigationHeight),
              child: Column(
                children: [
                  BigButton("토스뱅크", onTap: () {
                    context.showSnackbar("토스뱅크 클릭");
                  }),
                  height20,
                  RoundedContainer(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "자산".text.bold.white.make(),
                      height5,
                      ...bankAccounts.map((e) => BankAccountWidget(e)).toList()
                    ],
                  )),
                ],
              ).pSymmetric(h: 10),
            ),
          ),
          const TossAppbar()
        ],
      ),
    );
  }
}
