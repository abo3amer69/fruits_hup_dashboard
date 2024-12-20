import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:fruits_hup_dashboard/core/error/failure.dart';

import 'images_repo.dart';

class ImagesRepoImpl implements ImagesRepo {
  @override
  Future<Either<Failure, String>> uploadImage(File image) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}
