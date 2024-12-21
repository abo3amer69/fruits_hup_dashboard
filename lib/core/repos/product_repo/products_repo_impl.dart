import 'package:dartz/dartz.dart';
import 'package:fruits_hup_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

import '../../error/failure.dart';
import 'products_repo.dart';

class ProductsRepoImpl implements ProductsRepo {
  @override
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductinputEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }
}
