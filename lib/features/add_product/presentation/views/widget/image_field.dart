import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({super.key, required this.onFileChanged});

  final ValueChanged<File?> onFileChanged;

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? fileimage;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          setState(() {
            isLoading = true; // بداية التحميل
          });

          try {
            await PickImage();
          } catch (e) {
            // في حالة حدوث خطأ
            debugPrint("Error: $e");
          } finally {
            setState(() {
              isLoading = false; // إيقاف التحميل
            });
          }
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: fileimage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(
                        fileimage!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Icon(
                      Icons.image_outlined,
                      size: 180,
                    ),
            ),
            if (fileimage != null)
              Positioned(
                right: 8,
                top: 8,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      fileimage = null;
                    });
                    widget.onFileChanged(null);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> PickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        fileimage = File(image.path);
      });
      widget.onFileChanged(fileimage);
    }
  }
}
