import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/screen/main/tab/benefit/vo/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: context.appColors.benefitIconBg,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Image.asset(
              benefit.imagePath,
            )),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.title.text.size(13).make(),
            height10,
            benefit.subTitle.text.color(Colors.blue).size(13).make(),
          ],
        )
      ],
    ).pSymmetric(v: 20);
  }
}
