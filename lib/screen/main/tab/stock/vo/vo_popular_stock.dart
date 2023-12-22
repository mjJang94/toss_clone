import 'package:toss_clone/screen/main/tab/stock/stock_percentage_data_provider.dart';
import 'package:toss_clone/screen/main/tab/stock/vo/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageDataProvider{
  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;

  PopularStock({
    required this.yesterdayClosePrice,
    required this.currentPrice,
    required String stockName,
  }) : super(stockName);
}
