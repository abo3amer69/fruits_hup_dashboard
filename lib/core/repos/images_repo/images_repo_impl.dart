import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:fruits_hup_dashboard/core/error/failure.dart';
import 'package:fruits_hup_dashboard/core/services/storage_services.dart';
import 'package:fruits_hup_dashboard/core/utils/backend_endpoint.dart';
import 'images_repo.dart';

class ImagesRepoImpl implements ImagesRepo {
  final StorageServices storageServices;

  ImagesRepoImpl(this.storageServices);
  @override
  Future<Either<Failure, String>> uploadImage(File image) async {
    try {
      String url = await storageServices.uploadFile(
        image,
        BackendEndpoint.images,
      );
      return right(url);
    } catch (e) {
      return left(
        ServerFailure(
          'failed to upload image',
        ),
      );
    }
  }
}
