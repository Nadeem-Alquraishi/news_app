import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            image:   DecorationImage(
              fit: BoxFit.fill,
            image: AssetImage(category.image),
            ),
            
            borderRadius: BorderRadius.circular(16)
          ),
          child:  Center(
            child: Text(
            category.categoryName,
            style: const TextStyle(
            color: Colors.white,
          ),),),
        ),
    );
  }
}