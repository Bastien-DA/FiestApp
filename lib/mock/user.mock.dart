import '../utils/types/user.dart';

final User mockCurrentUser = User(
  userGuid: '1',
  username: 'Alice',
  gender: 'female',
  age: 25,
  height: 165,
  weight: 60,
  alcoholConsumption: 'occasionally',
  ppLink:
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpm1.narvii.com%2F6479%2Fd14cc25834ff36a45a29ecd0e9c7ec92021c96fd_hq.jpg&f=1&nofb=1&ipt=126ff8a7eaf3122eda206063efe488f8fd16990c30d9b4953ab709bbd47962a0',
);

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
