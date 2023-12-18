import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/common/widget/w_rounded_container.dart';
import 'package:toss_clone/screen/main/tab/home/vo/vo_bank_account.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (account.accountTypeName ?? "${account.bank.name} 통장")
                .text
                .white
                .size(12)
                .make(),
            ("${account.balance}원").text.white.size(18).make(),
          ],
        ).pSymmetric(h: 20, v: 10),
        const EmptyExpanded(),
        RoundedContainer(
          backgroundColor: context.appColors.buttonBackground,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          radius: 10,
          child: "송금".text.white.bold.make(),
        ),
      ],
    );
  }
}