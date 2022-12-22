import 'package:flutter/cupertino.dart';
import 'package:meals_store_app/data.dart';

import '../widgets/category_item_widget.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      padding: const EdgeInsets.all(24),
      children: DUMMY_CATEGORIES
          .map(
            (category) => CategoryItemWidget(
                id: category.id, title: category.title, color: category.color),
          )
          .toList(),
    );
  }
}
