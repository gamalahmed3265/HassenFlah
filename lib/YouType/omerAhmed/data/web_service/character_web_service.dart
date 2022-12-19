import 'package:dio/dio.dart';
import 'package:thirdpro/YouType/omerAhmed/constant/string.dart';

class CharacterWebService {
  late Dio dio;
  CharacterWebService() {
    BaseOptions Options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
    );

    dio = Dio(Options);
  }
  Future<List<dynamic>> getAllCharacter() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
