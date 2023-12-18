import 'package:toss_clone/screen/main/tab/home/banks.dummy.dart';
import 'package:toss_clone/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(
  bankShinhan,
  2000000,
  accountTypeName: "신한 주거래 우대통장(저축예금)",
);
final bankAccountShinhan2 = BankAccount(
  bankShinhan,
  30000000,
  accountTypeName: "저축예금",
);
final bankAccountShinhan3 = BankAccount(
  bankShinhan,
  30000000,
  accountTypeName: "저축예금",
);
final bankAccountKakao = BankAccount(bankKakao, 900000);
final bankAccountToss = BankAccount(
  bankToss,
  1400000,
  accountTypeName: "입출금통장",
);

final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
