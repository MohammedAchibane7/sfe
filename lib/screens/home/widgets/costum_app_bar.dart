import 'package:flutter/material.dart';

import 'costum_icon_button.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 85,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            //katakhed ga3 lmissa7a li chayta
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  focusedBorder: InputBorder.none,
                  hintText: "Search product",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const CustomIconButton(path: "assests/icon/Cart Icon.svg"),
          const SizedBox(
            width: 5,
          ),
          const CustomIconButton(path: "assests/icon/Bell.svg"),
          Container(),
        ],
      ),
    );
  }
}


