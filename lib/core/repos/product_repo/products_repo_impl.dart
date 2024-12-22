import 'package:dartz/dartz.dart';
import 'package:fruits_hup_dashboard/core/services/data_services.dart';
import 'package:fruits_hup_dashboard/core/utils/backend_endpoint.dart';
import 'package:fruits_hup_dashboard/features/add_product/data/models/add_product_input_model.dart';
import 'package:fruits_hup_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

import '../../error/failure.dart';
import 'products_repo.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DatabaseServices databaseServices;

  ProductsRepoImpl(this.databaseServices);
  @override
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductinputEntity) async {
    try {
      await databaseServices.addData(
        path: BackendEndpoint.productsCollection,
        data: AddProductInputModel.fromEntity(addProductinputEntity).toJson(),
      );
      return right(null);
    } catch (e) {
      return left(
        ServerFailure('failed to add product'),
      );
    }
  }
}
