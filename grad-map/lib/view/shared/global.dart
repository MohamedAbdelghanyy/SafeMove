import 'package:flutter/material.dart';

abstract class Global {
  static const Color blue = const Color(0xff4A64FE);

  static const List rooms = [
    // Corridor 1 (Top)
    {
      'location': 'Room 315', // Updated
      'name': '315',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.356, -0.33],
      'door_position': [0.3285, -0.30],
      'corridor_position': [0.3285, -0.288],
    },
    {
      'location': 'Room 314',
      'name': '314',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.284, -0.33],
      'door_position': [0.255, -0.30],
      'corridor_position': [0.255, -0.288],
    },
    {
      'location': 'Room 313',
      'name': '313',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.235, -0.33],
      'door_position': [0.234, -0.30],
      'corridor_position': [0.234, -0.29],
    },
    {
      'location': 'Room 312',
      'name': '312',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.175, -0.33],
      'door_position': [0.132, -0.30],
      'corridor_position': [0.132, -0.29],
    },
    {
      'location': 'Room 311',
      'name': '311',
      'icon': Icons.menu_book_rounded,
      'status': false,
      'position': [0.085, -0.33],
      'door_position': [0.06, -0.30],
      'corridor_position': [0.06, -0.29],
    },

    //Corridor 1 Bottom
    {
      'location': 'Room 316',
      'name': '316',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.349, -0.245],
      'door_position': [0.3595, -0.276],
      'corridor_position': [0.3595, -0.286],
    },
    {
      'location': 'Room 317',
      'name': '317',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.268, -0.245],
      'door_position': [0.299, -0.276],
      'corridor_position': [0.299, -0.286],
    },
    {
      'location': 'Room 318',
      'name': '318',
      'icon': Icons.menu_book_rounded,
      'status': false,
      'position': [0.21, -0.245],
      'door_position': [0.225, -0.276],
      'corridor_position': [0.225, -0.286],
    },
    {
      'location': 'Room 319',
      'name': '319',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.149, -0.245],
      'door_position': [0.18, -0.276],
      'corridor_position': [0.18, -0.286],
    },
    {
      'location': 'Male Rest Room',
      'name': 'WC',
      'icon': Icons.male_rounded,
      'status': true,
      'position': [0.105, -0.245],
      'door_position': [0.107, -0.276],
      'corridor_position': [0.107, -0.286],
    },
    {
      'location': 'Female Rest Room',
      'name': 'WC',
      'icon': Icons.female_rounded,
      'status': true,
      'position': [0.087, -0.245],
      'door_position': [0.09, -0.276],
      'corridor_position': [0.09, -0.286],
    },
    {
      'location': 'Buffet',
      'name': 'B',
      'icon': Icons.food_bank_rounded,
      'status': true,
      'position': [0.064, -0.245],
      'door_position': [0.07, -0.276],
      'corridor_position': [0.07, -0.286],
    },

    //Corridor 2 Top
    {
      'location': 'Room 310',
      'name': '310',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.0029, -0.299],
      'door_position': [-0.005, -0.271],
      'corridor_position': [-0.005, -0.256],
      'tile': 2,
    },
    {
      'location': 'Room 309',
      'name': '309',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.035, -0.299],
      'door_position': [-0.026, -0.271],
      'corridor_position': [-0.026, -0.256],
      'tile': 2,
    },
    {
      'location': 'Room 308',
      'name': '308',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.072, -0.299],
      'door_position': [-0.061, -0.271],
      'corridor_position': [-0.061, -0.256],
      'tile': 2,
    },
    {
      'location': 'Room 307',
      'name': '307',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.109, -0.299],
      'door_position': [-0.1, -0.271],
      'corridor_position': [-0.1, -0.256],
      'tile': 2,
    },
    {
      'location': 'Room 306',
      'name': '306',
      'icon': Icons.menu_book_rounded,
      'status': false,
      'position': [-0.151, -0.299],
      'door_position': [-0.137, -0.271],
      'corridor_position': [-0.137, -0.256],
      'tile': 2,
    },
    {
      'location': 'Room 305',
      'name': '305',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.192, -0.299],
      'door_position': [-0.198, -0.271],
      'corridor_position': [-0.198, -0.256],
      'tile': 1,
    },
    {
      'location': 'Room 304',
      'name': '304',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.229, -0.299],
      'door_position': [-0.22, -0.271],
      'corridor_position': [-0.22, -0.256],
      'tile': 1,
    },
    {
      'location': 'Room 303',
      'name': '303',
      'icon': Icons.menu_book_rounded,
      'status': false,
      'position': [-0.266, -0.299],
      'door_position': [-0.257, -0.271],
      'corridor_position': [-0.257, -0.256],
      'tile': 1,
    },
    {
      'location': 'Room 302',
      'name': '302',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.302, -0.299],
      'door_position': [-0.292, -0.271],
      'corridor_position': [-0.292, -0.256],
      'tile': 1,
    },
    {
      'location': 'Room 301',
      'name': '301',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.36, -0.299],
      'door_position': [-0.329, -0.271],
      'corridor_position': [-0.329, -0.256],
      'tile': 1,
    },

    //Corridor 2 Bottom
    {
      'location': 'Female Rest Room',
      'name': 'WC',
      'icon': Icons.female_rounded,
      'status': true,
      'position': [0.01275, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [0.009, 0.045],
      'tile': 2,
    },
    {
      'location': 'Male Rest Room',
      'name': 'WC',
      'icon': Icons.male_rounded,
      'status': true,
      'position': [-0.0062, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [-0.0025, 0.045],
      'tile': 2,
    },
    {
      'location': 'Buffet',
      'name': 'B',
      'icon': Icons.food_bank_rounded,
      'status': true,
      'position': [-0.034, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [0.000, 0.000],
      'tile': 2,
    },
    {
      'location': 'Room 320',
      'name': '320',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.074, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [0.000, 0.000],
      'tile': 2,
    },
    {
      'location': 'Room 321',
      'name': '321',
      'icon': Icons.menu_book_rounded,
      'status': false,
      'position': [-0.111, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [0.000, 0.000],
      'tile': 2,
    },
    {
      'location': 'Room 322',
      'name': '322',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [-0.151, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [0.000, 0.000],
      'tile': 2,
    },
    {
      'location': 'Room 323',
      'name': '323',
      'icon': Icons.menu_book_rounded,
      'status': true,
      'position': [0.11, 0.0915],
      'door_position': [0.000, 0.000],
      'corridor_position': [0.000, 0.000],
      'tile': 1,
    },
  ];

  static const List corridorCheckPoint = [
    {
      'position': [0.0585, 0.0125], // 316
      'tile': 3,
    },
    {
      'position': [0.3285, -0.288], // 315 // Updated
      'tile': 3,
    },
    {
      'position': [-0.002, 0.0125], // 317
      'tile': 3,
    },
    {
      'position': [-0.0455, 0.0125], // 314
      'tile': 3,
    },
    {
      'position': [-0.0665, 0.0125], // 313
      'tile': 3,
    },
    {
      'position': [-0.0756, 0.0125], // 318
      'tile': 3,
    },
    {
      'position': [-0.121, 0.0125], // 319
      'tile': 3,
    },
    {
      'position': [0.1325, 0.0125], // 312
      'tile': 2,
    },
    {
      'position': [0.107, 0.0125], // WCM
      'tile': 2,
    },
    {
      'position': [0.09, 0.0125], // WCF
      'tile': 2,
    },
    {
      'position': [0.0705, 0.0125], // B
      'tile': 2,
    },
    {
      'position': [0.0611, 0.0125], // 311
      'tile': 2,
    },
    {
      'position': [0.036, 0.0125], // Tile 2 Turn 1
      'tile': 2,
    },
    {
      'position': [0.036, 0.045], // Tile 2 Turn 2
      'tile': 2,
    },
    {
      'position': [0.009, 0.045], // WCF
      'tile': 2,
    },
    {
      'position': [-0.0025, 0.045], // WCM
      'tile': 2,
    },
    {
      'position': [-0.0041, 0.045], // 310
      'tile': 2,
    },
    {
      'position': [-0.0257, 0.045], // 309
      'tile': 2,
    },
    {
      'position': [-0.0357, 0.045], // 309
      'tile': 2,
    }
  ];
}
