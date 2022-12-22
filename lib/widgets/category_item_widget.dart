import 'package:flutter/material.dart';
import 'package:meals_store_app/screens/category_meals_screen.dart';

class CategoryItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItemWidget({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryMealsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
