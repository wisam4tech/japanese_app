import 'package:flutter/material.dart';
import 'package:toku/Components/item_info.dart';
import 'package:toku/models/number.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.itemPhrase,
    required this.color,
  });
  final ItemModel itemPhrase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Expanded(child: ItemInfo(itemInfo: itemPhrase)),
        ],
      ),
    );
  }
}
