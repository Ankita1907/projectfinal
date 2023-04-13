import 'package:cognitive_app/image_download.dart';

class ImageDownload {

  static void downloadImg(String src)async {

    try {
      var imageId = await ImageDownloader.downloadImage(src);
      if (imageId == null) {
        return;
      }
      var path = await ImageDownloader.findPath(imageId);
    } on PlatformException catch (error) {
      print(error);
    }

  }

}