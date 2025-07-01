import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/utils/types/user.dart';

class UserService {
  Future<User> getCurrentUser() async {
    return await Future.delayed(
        Duration(milliseconds: 300),
    () => mockCurrentUser);
  }

  Future<User> getById(String guid) async {
    return await Future.delayed(
        Duration(milliseconds: 300),
    () => mockUsers.firstWhere((u) => u.userGuid == guid));
  }
}
