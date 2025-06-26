import '../utils/types/user.dart';

final User mockCurrentUser = User(
  userGuid: '1',
  username: 'Alice',
  biologicalGender: 'female',
  age: 25,
  height: 165,
  weight: 60,
  alcoholConsumption: 'occasionally',
  ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
);

final List<User> mockUsers = [
  User(
    userGuid: '1',
    username: 'Alice',
    biologicalGender: 'female',
    age: 25,
    height: 165,
    weight: 60,
    alcoholConsumption: 'occasionally',
    ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
  ),
  User(
    userGuid: '2',
    username: 'Bob',
    biologicalGender: 'male',
    age: 30,
    height: 180,
    weight: 75,
    alcoholConsumption: 'regularly',
    ppLink: 'https://randomuser.me/api/portraits/men/2.jpg',
  ),
  User(
    userGuid: '3',
    username: 'Charlie',
    biologicalGender: 'non-binary',
    age: 22,
    height: 170,
    weight: 65,
    alcoholConsumption: 'never',
    ppLink: 'https://randomuser.me/api/portraits/men/3.jpg',
  ),
  User(
    userGuid: '4',
    username: 'Diana',
    biologicalGender: 'female',
    age: 28,
    height: 160,
    weight: 58,
    alcoholConsumption: 'socially',
    ppLink: 'https://randomuser.me/api/portraits/women/4.jpg',
  ),
];
