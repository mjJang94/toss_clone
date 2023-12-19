import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/screen/main/s_main.dart';
import 'package:toss_clone/screen/main/tab/benefit/benefit_dummy.dart';
import 'package:toss_clone/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:toss_clone/screen/main/tab/benefit/w_point_button.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigationHeight),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height10,
            "혜택".text.white.bold.size(18).make(),
            height30,
            const PointButton(point: 569),
            height20,
            "혜택 더 받기".text.white.bold.size(16).make(),
            height20,
            ...benefitList.map((element) => BenefitItem(benefit: element)).toList(),
          ],
        ).p(20),
      ),
    );
  }
}
