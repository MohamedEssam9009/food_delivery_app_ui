import 'package:flutter/material.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final void Function()? press;

  const FoodCard({
    super.key,
    required this.title,
    required this.ingredient,
    required this.image,
    required this.price,
    required this.calories,
    required this.description, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 20.0),
        height: 400.0,
        width: 270.0,
        child: Stack(
          children: [
            // Big light background
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Container(
                margin: const EdgeInsets.only(left: 20.0),
                height: 380.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.0),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            //Rounded Background
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                height: 181.0,
                width: 181.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            // Food Image
            Positioned(
              top: 0.0,
              left: -50.0,
              child: Container(
                height: 184.0,
                width: 276.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            // Price
            Positioned(
              right: 20.0,
              top: 80.0,
              child: Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201.0,
              left: 40.0,
              child: SizedBox(
                width: 210.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      'With $ingredient',
                      style: TextStyle(color: kTextColor.withOpacity(.4)),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(color: kTextColor.withOpacity(.65)),
                    ),
                    const SizedBox(height: 16.0),
                    Text(calories),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
