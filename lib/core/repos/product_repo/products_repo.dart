import 'package:dartz/dartz.dart';
import 'package:fruits_hup_dashboard/core/error/failure.dart';
import 'package:fruits_hup_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductsRepo {
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductinputEntity);
}
