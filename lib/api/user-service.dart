import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/utils/types/user.dart';

class UserService {
  User getCurrentUser() {
    return mockCurrentUser;
  }
}
