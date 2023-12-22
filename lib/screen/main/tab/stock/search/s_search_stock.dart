import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toss_clone/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:toss_clone/screen/main/tab/stock/search/w_popular_search_stock_list.dart';
import 'package:toss_clone/screen/main/tab/stock/search/w_search_history_stock_list.dart';
import 'package:toss_clone/screen/main/tab/stock/search/w_stock_search_app_bar.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockScreenState();
}

class _SearchStockScreenState extends State<SearchStockScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    Get.put(SearchStockData());
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchStockAppBar(
        controller: controller,
      ),
      body: ListView(children: [
        SearchHistoryList(),
        PopularSearchStockList(),
      ],),
    );
  }
}
