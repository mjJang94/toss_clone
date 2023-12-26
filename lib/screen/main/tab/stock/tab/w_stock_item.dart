import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import '../vo/vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(this.stock, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          width10,
          Image.asset(stock.stockImagePath, width: 35),
          width20,
          (stock.name).text.size(14).bold.make(),
          emptyExpanded,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
              "${stock.currentPrice.toComma()}원".text.make(),
            ],
          ),
        ],
      ),
    );
  }
}
