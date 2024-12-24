import 'dart:io';

import 'package:fruits_hup_dashboard/features/add_product/domain/entities/review_entity.dart';

class AddProductInputEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;

  final int unitAmount;
  final List<ReviewEntity> reviews;

  AddProductInputEntity(
      {required this.name,
      required this.expirationMonths,
      required this.numOfCalories,
      required this.unitAmount,
      required this.code,
      required this.reviews,
      required this.description,
      required this.price,
      required this.image,
      required this.isFeatured,
      this.isOrganic = false,
      this.imageUrl});
}
