import 'package:fruits_hup_dashboard/features/add_product/domain/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final String data;
  final String reviewDescription;

  ReviewModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.data,
      required this.reviewDescription});

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name,
      image: reviewEntity.image,
      rating: reviewEntity.rating,
      data: reviewEntity.data,
      reviewDescription: reviewEntity.reviewDescription,
    );
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      image: json['image'],
      rating: json['rating'],
      data: json['data'],
      reviewDescription: json['reviewDescription'],
    );
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'rating': rating,
      'data': data,
      'reviewDescription': reviewDescription,
    };
  }
}