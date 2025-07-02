import 'package:fiestapp/models/user.dart';

final User mockCurrentUser = mockUsers[0];

final List<User> mockUsers = [
  User(
    userGuid: '1',
    username: 'Alice',
    gender: 'Female',
    age: 25,
    height: 165,
    weight: 60,
    alcoholConsumption: 'Occasional',
    ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
  ),
  User(
    userGuid: '2',
    username: 'Bob',
    gender: 'Male',
    age: 30,
    height: 180,
    weight: 75,
    alcoholConsumption: 'Regular',
    ppLink: 'https://randomuser.me/api/portraits/men/2.jpg',
  ),
  User(
    userGuid: '3',
    username: 'Charlie',
    gender: 'Male',
    age: 22,
    height: 170,
    weight: 65,
    alcoholConsumption: 'Veteran',
    ppLink: 'https://randomuser.me/api/portraits/men/3.jpg',
  ),
  User(
    userGuid: '4',
    username: 'Diana',
    gender: 'Female',
    age: 28,
    height: 160,
    weight: 58,
    alcoholConsumption: 'Veteran',
    ppLink: 'https://randomuser.me/api/portraits/women/4.jpg',
  ),
];
