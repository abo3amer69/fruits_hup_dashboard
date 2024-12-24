import 'dart:io';

class AddProductInputEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic = false;
  final int numOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;

  final int unitAmount;

  AddProductInputEntity(
      {required this.name,
      required this.expirationMonths,
      required this.numOfCalories,
      required this.unitAmount,
      required this.code,
      required this.description,
      required this.price,
      required this.image,
      required this.isFeatured,
      this.imageUrl});
}
