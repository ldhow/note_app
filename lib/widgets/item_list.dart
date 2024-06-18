import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  const ItemList({
    super.key,
    required this.index,
    required this.onTap,
    required this.onLongPress,
    required this.isSelected,
  });

  final int index;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final bool isSelected;

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    VoidCallback onTap = widget.onTap;
    VoidCallback onLongPress = widget.onLongPress;
    bool isSelected = widget.isSelected;

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Card.outlined(
        key: widget.key,
        color: isSelected ? Colors.grey.shade300 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  style: Theme.of(context).textTheme.titleLarge,
                  'Title $index'),
              Text(style: Theme.of(context).textTheme.bodyLarge, 'Body $index')
            ],
          ),
        ),
      ),
    );
  }
}
