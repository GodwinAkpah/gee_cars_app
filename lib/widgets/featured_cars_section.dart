import 'package:flutter/material.dart';
import '../car_model.dart';
import '../color.dart';
import 'car_card.dart';

class FeaturedCarsSection extends StatelessWidget {
  final List<Car> cars;

  const FeaturedCarsSection({
    super.key,
    required this.cars,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Featured Cars",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
            // Wrap the TextButton with an Expanded widget
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return CarCard(car: cars[index]);
            },
          ),
        ),
      ],
    );
  }
}
