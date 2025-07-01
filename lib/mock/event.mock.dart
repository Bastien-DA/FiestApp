import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/utils/types/event.dart';

final mockEvents = [
  Event(
    guid: 'event-001',
    title: 'Soirée Karaoké & Cocktails',
    description:
        'Une soirée avec du chant, des cocktails maison et une ambiance détendue.',
    location: '25 Rue du Chant, Lyon',
    latitute: 45.750000,
    longitude: 4.850000,
    date: 1750940247,
    // 26/06/2025
    organizer: mockUsers[0],
    participants: {
      mockUsers[0], // organiser
      mockUsers[1],
      mockUsers[2],
    }.toList(),
    expenses: [],
  ),
  Event(
    guid: 'event-002',
    title: 'Randonnée & Pique-nique',
    description:
        'Randonnée dans les montagnes suivie d’un pique-nique au sommet.',
    location: 'Parc National des Écrins',
    latitute: 44.9231,
    longitude: 6.3650,
    date: 1751209447,
    // 29/06/2025
    organizer: mockUsers[1],
    participants: {
      mockUsers[1], // organiser
      mockUsers[0],
      mockUsers[2],
    }.toList(),
    expenses: [],
  ),
  Event(
    guid: 'event-003',
    title: 'Tournoi de Jeux de Société',
    description:
        'Venez affronter vos amis autour des meilleurs jeux de société.',
    location: 'Café Ludique, Grenoble',
    latitute: 45.187560,
    longitude: 5.735780,
    date: 1751468647,
    // 2/07/2025
    organizer: mockUsers[2],
    participants: {
      mockUsers[2], // organiser
      mockUsers[0],
      mockUsers[3],
    }.toList(),
    expenses: [],
  ),
  Event(
    guid: 'event-004',
    title: 'Atelier Cuisine Végétarienne',
    description:
        'Apprenez à cuisiner des plats sains et délicieux avec un chef végétarien.',
    location: '12 Rue des Chefs, Marseille',
    latitute: 43.296482,
    longitude: 5.369780,
    date: 1751727847,
    // 5/07/2025
    organizer: mockUsers[3],
    participants: {
      mockUsers[3], // organiser
      mockUsers[1],
      mockUsers[2],
    }.toList(),
    expenses: [],
  ),
];
