import 'package:get/get.dart';
import 'package:toss_clone/common/util/local_json.dart';
import 'package:toss_clone/screen/main/tab/stock/vo/vo_simple_stock.dart';

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(["삼성전자", "LG전자", "현대차", "넷플릭스"]);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList = await LocalJson.getObjectList<SimpleStock>("stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    autoCompleteList.value = stocks.where((element) => element.stockName.contains(keyword)).toList();
  }
}
