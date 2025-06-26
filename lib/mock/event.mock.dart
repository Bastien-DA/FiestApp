import '../utils/types/event.dart';
import '../utils/types/user.dart';

final mockEvent = Event(
  guid: 'event-001',
  title: 'Soirée Karaoké & Cocktails',
  description:
      'Une super soirée avec du chant, des cocktails maison, et plein de fun !',
  location: '25 Rue du Chant, Lyon',
  latitute: 45,
  // latitude fictive
  longitude: 4,
  // longitude fictive
  date: 1750940247,

  // timestamp correspondant à 26/06/2025
  organazer: User(
    userGuid: 'user-001',
    username: 'Alice',
    biologicalGender: 'female',
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
      biologicalGender: 'female',
      age: 28,
      height: 165,
      weight: 60,
      alcoholConsumption: 'socially',
      ppLink: 'https://randomuser.me/api/portraits/women/1.jpg',
    ),
    User(
      userGuid: 'user-002',
      username: 'Bob',
      biologicalGender: 'male',
      age: 30,
      height: 180,
      weight: 80,
      alcoholConsumption: 'regularly',
      ppLink: 'https://randomuser.me/api/portraits/men/2.jpg',
    ),
    User(
      userGuid: 'user-003',
      username: 'Charlie',
      biologicalGender: 'non-binary',
      age: 26,
      height: 170,
      weight: 70,
      alcoholConsumption: 'occasionally',
      ppLink: 'https://randomuser.me/api/portraits/men/3.jpg',
    ),
  ],

  expenses: [],
);
