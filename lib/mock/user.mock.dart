import '../utils/types/user.dart';

final User mockCurrentUser = mockUsers[0];

final List<User> mockUsers = [
  User(
    userGuid: '1',
    username: 'Alice',
    gender: 'female',
    age: 25,
    height: 165,
    weight: 60,
    alcoholConsumption: 'occasionally',
    ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
  ),
  User(
    userGuid: '2',
    username: 'Bob',
    gender: 'male',
    age: 30,
    height: 180,
    weight: 75,
    alcoholConsumption: 'regularly',
    ppLink: 'https://randomuser.me/api/portraits/men/2.jpg',
  ),
  User(
    userGuid: '3',
    username: 'Charlie',
    gender: 'male',
    age: 22,
    height: 170,
    weight: 65,
    alcoholConsumption: 'seasoned',
    ppLink: 'https://randomuser.me/api/portraits/men/3.jpg',
  ),
  User(
    userGuid: '4',
    username: 'Diana',
    gender: 'female',
    age: 28,
    height: 160,
    weight: 58,
    alcoholConsumption: 'seasoned',
    ppLink: 'https://randomuser.me/api/portraits/women/4.jpg',
  ),
];
