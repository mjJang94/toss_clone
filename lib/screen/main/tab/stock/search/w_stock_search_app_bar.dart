import 'package:flutter/material.dart';
import 'package:toss_clone/common/common.dart';
import 'package:toss_clone/common/util/app_keyboard_util.dart';
import 'package:toss_clone/common/widget/w_arrow.dart';
import 'package:toss_clone/common/widget/w_text_field_with_delete.dart';

class SearchStockAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const SearchStockAppBar({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            Tap(
              onTap: () => Nav.pop(context),
              child: const SizedBox(
                width: 56,
                child: Arrow(direction: AxisDirection.left),
              ),
            ),
            Expanded(
              child: TextFieldWithDelete(
                controller: controller,
                textInputAction: TextInputAction.search,
                texthint: "'커피'를 검색해보세요",
                onEditingComplete: () {
                  AppKeyboardUtil.hide(context);
                },
              ).pOnly(top: 6),
            ),
            width20,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
