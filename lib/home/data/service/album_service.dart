import 'package:dio/dio.dart';
import 'package:music_app_flutter/home/data/model/album_model.dart';
import 'package:music_app_flutter/shared/constants.dart';

class AlbumService {
  AlbumService(this.dio);

  final Dio dio;

  Future<Albums> getAlbums() async {
    const url =
        "$apiUrl/artist_albums/?id=2kCcBybjl3SAtIcwdWpUe3&offset=0&limit=100";

    try {
      final response = await dio.get(url,
          options: Options(headers: {
            "Content-Type": "application/json",
            "X-RapidAPI-Key":
                "ea455edd1emsha268caf8b4eced6p1eb741jsn450b2d4ec9c1",
            "X-RapidAPI-Host": "spotify23.p.rapidapi.com",
          }));
      return Albums.fromJson(response.data);
    } on DioError catch (_) {
      throw DioError(requestOptions: RequestOptions(path: url));
    } catch (e) {
      throw Exception("Erro ao pegar albums");
    }
  }
}
