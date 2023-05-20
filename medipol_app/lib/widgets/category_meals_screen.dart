import 'package:flutter/material.dart';
import 'package:medipol_app/models/dummy_data.dart';
import 'package:medipol_app/widgets/meal_item.dart';


class CategoryMealsScreen extends StatelessWidget {
  String id;
  String title;
  String text;
  String imageUrl;



  CategoryMealsScreen({required this.id, required this.title,required this.text,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(id))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            categoryMeals[index].id,
            categoryMeals[index].title,
            categoryMeals[index].imageUrl,
            categoryMeals[index].duration,
            categoryMeals[index].complexity,
            categoryMeals[index].affordability,
            categoryMeals[index].text,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
