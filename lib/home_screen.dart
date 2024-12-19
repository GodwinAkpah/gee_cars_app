import 'package:flutter/material.dart';
import 'package:gee_cars/data.dart';
import '../widgets/header_section.dart';
import '../widgets/categories_section.dart';
import '../widgets/featured_cars_section.dart';
import '../widgets/popular_deals_section.dart';
import '../color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategory = 0;
  final categories = ["All", 'Tesla', 'BMW', 'Mercedes', 'Audi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    CategoriesSection(
                      categories: categories,
                      selectedCategory: _selectedCategory,
                      onCategorySelected: (index) {
                        setState(() {
                          _selectedCategory = index;
                        });
                      },
                    ),
                    const SizedBox(height: 38),
                    FeaturedCarsSection(cars: featuredCars),
                    const SizedBox(height: 20),
                    PopularDealsSection(cars: featuredCars),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
