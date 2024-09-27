import 'package:flutter/material.dart';
import 'package:toku/Components/item_info.dart';
import 'package:toku/models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.item,
    required this.color,
  });
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFFDE3), child: Image.asset(item.image!)),
          Expanded(child: ItemInfo(itemInfo: item)),
        ],
      ),
    );
  }
}
