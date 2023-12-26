import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'search_stock_data.dart';
import 'package:get/get.dart';

class SearchAutoCompleteList extends StatelessWidget {
  SearchAutoCompleteList({super.key});
  late final searchData = Get.find<SearchStockData>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => searchData.autoCompleteList[index].stockName.text.make());
  }
}
