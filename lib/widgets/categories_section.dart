import 'package:flutter/material.dart';
import '../color.dart';

class CategoriesSection extends StatelessWidget {
  final List<String> categories;
  final int selectedCategory;
  final Function(int) onCategorySelected;

  const CategoriesSection({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final isSelected = selectedCategory == index;
              return GestureDetector(
                onTap: () => onCategorySelected(index),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.secondary : AppColors.cardBg,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      if (isSelected)
                        BoxShadow(
                          color: AppColors.secondary.withOpacity(0.3),
                          blurRadius: 18,
                          offset: const Offset(0, 5),
                        )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: isSelected ? Colors.white : AppColors.textLight,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
