import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fruits_hup_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hup_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruits_hup_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hup_dashboard/core/repos/product_repo/products_repo_impl.dart';
import 'package:fruits_hup_dashboard/core/services/data_services.dart';
import 'package:fruits_hup_dashboard/core/services/fire_storage.dart';
import 'package:fruits_hup_dashboard/core/services/firestore_service.dart';
import 'package:fruits_hup_dashboard/core/services/storage_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<StorageServices>(FireStorage());
  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(getIt.get<StorageServices>()));
  getIt.registerSingleton<DatabaseServices>(FirestoreService());
  getIt.registerSingleton<ProductsRepo>(
      ProductsRepoImpl(getIt.get<DatabaseServices>()));
}
