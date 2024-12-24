import 'dart:io';

import '../../domain/entities/add_product_input_entity.dart';

class AddProductInputModel {
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

  AddProductInputModel(
      {required this.expirationMonths,
      required this.numOfCalories,
      required this.unitAmount,
      required this.isOrganic,
      required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.image,
      required this.isFeatured,
      this.imageUrl});

  factory AddProductInputModel.fromEntity(
      AddProductInputEntity addProductInputEntity) {
    return AddProductInputModel(
      isOrganic: addProductInputEntity.isOrganic,
      expirationMonths: addProductInputEntity.expirationMonths,
      numOfCalories: addProductInputEntity.numOfCalories,
      unitAmount: addProductInputEntity.unitAmount,
      name: addProductInputEntity.name,
      code: addProductInputEntity.code,
      description: addProductInputEntity.description,
      price: addProductInputEntity.price,
      image: addProductInputEntity.image,
      isFeatured: addProductInputEntity.isFeatured,
      imageUrl: addProductInputEntity.imageUrl,
    );
  }
  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'numOfCalories': numOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
    };
  }
}
