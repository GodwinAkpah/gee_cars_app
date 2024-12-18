import 'package:flutter/material.dart';

import 'car_model.dart';
import 'color.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;
  const CarDetailScreen({required this.car, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                backgroundColor: AppColors.primary,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(children: [
                    Positioned.fill(
                        child: Hero(
                            tag: car.name,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [
                                  AppColors.primary,
                                  AppColors.primary.withOpacity(0.8),
                                ],
                              )),
                            )))
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
