import 'package:fruits_hup_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductsRepo {
  Future<void> addProduct(AddProductInputEntity addProductinputEntity);
}