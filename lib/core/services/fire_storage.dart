import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:fruits_hup_dashboard/core/services/storage_services.dart';
import 'package:path/path.dart' as b;

class FireStorage implements StorageServices {
  final storageReferance = FirebaseStorage.instance.ref();
  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path);
    String extensionName = b.extension(file.path);
    var fileReferance = storageReferance.child(
      '$path/$fileName$extensionName',
    );
    await fileReferance.putFile(file);
    var fileUrl = fileReferance.getDownloadURL();
    return fileUrl;
  }
}
