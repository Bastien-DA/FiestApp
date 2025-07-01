import '../utils/types/event.dart';
import '../utils/types/user.dart';

final mockEvent = Event(
  guid: 'details-001',
  title: 'Soirée Karaoké & Cocktails',
  description:
      'Une super soirée avec du chant, des cocktails maison, et plein de fun !',
  location: '25 Rue du Chant, Lyon',
  latitute: 44.833328,
  // latitude fictive
  longitude: -0.56667,
  // longitude fictive
  date: 1750940247,

  // timestamp correspondant à 26/06/2025
  organizer: User(
    userGuid: 'user-001',
    username: 'Alice',
    gender: 'female',
    age: 28,
    height: 165,
    weight: 60,
    alcoholConsumption: 'socially',
    ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
  ),

  participants: [
    User(
      userGuid: 'user-001',
      username: 'Alice',
      gender: 'female',
      age: 28,
      height: 165,
      weight: 60,
      alcoholConsumption: 'socially',
      ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
    ),
    User(
      userGuid: 'user-002',
      username: 'Bob',
      gender: 'male',
      age: 30,
      height: 180,
      weight: 80,
      alcoholConsumption: 'regularly',
      ppLink: 'https://randomuser.me/api/portraits/men/2.jpg',
    ),
    User(
      userGuid: 'user-003',
      username: 'Charlie',
      gender: 'non-binary',
      age: 26,
      height: 170,
      weight: 70,
      alcoholConsumption: 'occasionally',
      ppLink: 'https://randomuser.me/api/portraits/men/3.jpg',
    ),
  ],

  expenses: [],
);
