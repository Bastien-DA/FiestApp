import 'package:fiestapp/utils/constant/constant.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  final userApi = apiClient.getUsersApi();


  Future<User?> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final String monId = prefs.getString('currentId') ?? '';

    final response = await userApi.userControllerFindOne(id: monId);

    return response.data;
  }

  Future<User?> getById(String guid) async {
    final response = await userApi.userControllerFindOne(id: guid);

    return response.data;
  }
}
