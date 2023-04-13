import 'package:cognitive_app/image_download.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';

class ImageDownload {
  static Future<String?> downloadImg(String src) async {
    try {
      var imageId = await ImageDownloader.downloadImage(src);
      if (imageId == null) {
        return null;
      }
      var path = await ImageDownloader.findPath(imageId);
      print(path);
      return path;
    } on PlatformException catch (error) {
      print(error);
      return error.toString();
    }
  }
}
