import 'dart:io';

abstract class StorageServices {
  Future<String> uploadFile(String file);
}
