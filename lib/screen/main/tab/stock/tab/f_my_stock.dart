import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/common/widget/w_arrow.dart';
import 'package:toss_clone/common/widget/w_long_button.dart';
import 'package:toss_clone/common/widget/w_rounded_container.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height20, getMyStock(context)],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            "계좌".text.make(),
            Row(
              children: [
                "443원".text.size(24).bold.make(),
                const Arrow(),
                emptyExpanded,
                RoundedContainer(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  radius: 8,
                  backgroundColor: context.appColors.buttonBackground,
                  child: "채우기".text.size(12).make(),
                ),
              ],
            ),
            height30,
            Line(color: context.appColors.customDivider),
            height10,
            LongButton(title: "주문내역"),
            LongButton(title: "판매수익"),
          ],
        ),
      );

  Widget getMyStock(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: context.appColors.roundedLayoutBackground,
      child: Column(
        children: [
          height30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "관심주식".text.bold.make(),
              "편집하기".text.color(context.appColors.lessImportant).make(),
            ],
          ),
          height20,
          Tap(
            onTap: (){
              context.showSnackbar("기본");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "기본".text.make(),
                  Arrow(
                    direction: AxisDirection.up,
                  )
                ],
              ),
            ),
          )
        ],
      ));
}
