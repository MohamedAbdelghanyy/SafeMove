import 'package:flutter/material.dart';

abstract class Global {
  static Color primaryColor = Colors.white; //Colors.blue[900];
  static Color secondaryColor = Colors.blue[900]; //Colors.white;

  /*static const List rooms = [
    // Corridor 1 Top
    {
      'location': 'Room 315', // Updated
      'name': '315',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.356, -0.33],
      'door_position': [0.3285, -0.30],
      'corridor_position': [0.3285, -0.288],
    },
    {
      'location': 'Room 314',
      'name': '314',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.284, -0.33],
      'door_position': [0.255, -0.30],
      'corridor_position': [0.255, -0.288],
    },
    {
      'location': 'Room 313',
      'name': '313',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.235, -0.33],
      'door_position': [0.234, -0.30],
      'corridor_position': [0.234, -0.288],
    },
    {
      'location': 'Room 312',
      'name': '312',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.175, -0.33],
      'door_position': [0.132, -0.30],
      'corridor_position': [0.132, -0.288],
    },
    {
      'location': 'Room 311',
      'name': '311',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': false,
      'position': [0.085, -0.33],
      'door_position': [0.06, -0.30],
      'corridor_position': [0.06, -0.288],
    },

    //Corridor 1 Bottom
    {
      'location': 'Room 316',
      'name': '316',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.349, -0.245],
      'door_position': [0.3595, -0.276],
      'corridor_position': [0.3595, -0.288],
    },
    {
      'location': 'Room 317',
      'name': '317',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.268, -0.245],
      'door_position': [0.299, -0.276],
      'corridor_position': [0.299, -0.288],
    },
    {
      'location': 'Room 318',
      'name': '318',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': false,
      'position': [0.21, -0.245],
      'door_position': [0.225, -0.276],
      'corridor_position': [0.225, -0.288],
    },
    {
      'location': 'Room 319',
      'name': '319',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.149, -0.245],
      'door_position': [0.18, -0.276],
      'corridor_position': [0.18, -0.288],
    },
    {
      'location': 'Male Rest Room 2',
      'name': 'WC',
      'icon': Icons.male_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.105, -0.245],
      'door_position': [0.107, -0.276],
      'corridor_position': [0.107, -0.288],
    },
    {
      'location': 'Female Rest Room 2',
      'name': 'WC',
      'icon': Icons.female_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.087, -0.245],
      'door_position': [0.09, -0.276],
      'corridor_position': [0.09, -0.288],
    },
    {
      'location': 'Buffet 2',
      'name': 'B',
      'icon': Icons.food_bank_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.064, -0.245],
      'door_position': [0.07, -0.276],
      'corridor_position': [0.07, -0.288],
    },

    //Corridor 2 Top
    {
      'location': 'Room 310',
      'name': '310',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.0029, -0.299],
      'door_position': [-0.005, -0.271],
      'corridor_position': [-0.005, -0.256],
    },
    {
      'location': 'Room 309',
      'name': '309',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.035, -0.299],
      'door_position': [-0.026, -0.271],
      'corridor_position': [-0.026, -0.256],
    },
    {
      'location': 'Room 308',
      'name': '308',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.072, -0.299],
      'door_position': [-0.061, -0.271],
      'corridor_position': [-0.061, -0.256],
    },
    {
      'location': 'Room 307',
      'name': '307',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.109, -0.299],
      'door_position': [-0.1, -0.271],
      'corridor_position': [-0.1, -0.256],
    },
    {
      'location': 'Room 306',
      'name': '306',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': false,
      'position': [-0.151, -0.299],
      'door_position': [-0.137, -0.271],
      'corridor_position': [-0.137, -0.256],
    },
    {
      'location': 'Room 305',
      'name': '305',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.192, -0.299],
      'door_position': [-0.198, -0.271],
      'corridor_position': [-0.198, -0.256],
    },
    {
      'location': 'Room 304',
      'name': '304',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.229, -0.299],
      'door_position': [-0.22, -0.271],
      'corridor_position': [-0.22, -0.256],
    },
    {
      'location': 'Room 303',
      'name': '303',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': false,
      'position': [-0.266, -0.299],
      'door_position': [-0.257, -0.271],
      'corridor_position': [-0.257, -0.256],
    },
    {
      'location': 'Room 302',
      'name': '302',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.302, -0.299],
      'door_position': [-0.292, -0.271],
      'corridor_position': [-0.292, -0.256],
    },
    {
      'location': 'Room 301',
      'name': '301',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.36, -0.299],
      'door_position': [-0.326, -0.271],
      'corridor_position': [-0.326, -0.256],
    },

    //Corridor 2 Bottom
    {
      'location': 'Female Rest Room 1',
      'name': 'WC',
      'icon': Icons.female_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [0.013, -0.209],
      'door_position': [0.01, -0.242],
      'corridor_position': [0.01, -0.256],
    },
    {
      'location': 'Male Rest Room 1',
      'name': 'WC',
      'icon': Icons.male_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.006, -0.209],
      'door_position': [-0.0025, -0.242],
      'corridor_position': [-0.0025, -0.256],
    },
    {
      'location': 'Buffet 1',
      'name': 'B',
      'icon': Icons.food_bank_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.034, -0.209],
      'door_position': [-0.034, -0.242],
      'corridor_position': [-0.034, -0.256],
    },
    {
      'location': 'Room 320',
      'name': '320',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.073, -0.209],
      'door_position': [-0.078, -0.242],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'location': 'Room 321',
      'name': '321',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': false,
      'position': [-0.111, -0.209],
      'door_position': [-0.117, -0.242],
      'corridor_position': [-0.117, -0.256],
    },
    {
      'location': 'Room 322',
      'name': '322',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.151, -0.209],
      'door_position': [-0.163, -0.242],
      'corridor_position': [-0.163, -0.256],
    },
    {
      'location': 'Room 323',
      'name': '323',
      'icon': Icons.menu_book_rounded,
      'layout': 'vertical',
      'status': true,
      'position': [-0.191, -0.209],
      'door_position': [-0.2, -0.242],
      'corridor_position': [-0.2, -0.256],
    },
    //Corridor 3 Left
    {
      'location': 'Room 333',
      'name': '333',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.374, 0.114],
      'door_position': [-0.341, 0.091],
      'corridor_position': [-0.329, 0.091],
    },
    {
      'location': 'Room 332',
      'name': '332',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.374, 0.2],
      'door_position': [-0.341, 0.15],
      'corridor_position': [-0.329, 0.15],
    },
    {
      'location': 'Room 331',
      'name': '331',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.374, 0.299],
      'door_position': [-0.341, 0.27],
      'corridor_position': [-0.329, 0.27],
    },
    {
      'location': 'Room 330',
      'name': '330',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.374, 0.375],
      'door_position': [-0.341, 0.344],
      'corridor_position': [-0.329, 0.344],
    },

    //Corridor 3 Right
    {
      'location': 'Female Rest Room',
      'name': 'WC',
      'icon': Icons.female_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.285, 0.114],
      'door_position': [-0.315, 0.114],
      'corridor_position': [-0.329, 0.114],
    },
    {
      'location': 'Male Rest Room',
      'name': 'WC',
      'icon': Icons.male_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.285, 0.133],
      'door_position': [-0.315, 0.133],
      'corridor_position': [-0.329, 0.133],
    },
    {
      'location': 'Room 327 TA',
      'name': '327 TA',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.285, 0.179],
      'door_position': [-0.315, 0.205],
      'corridor_position': [-0.329, 0.205],
    },
    {
      'location': 'Room 327',
      'name': '327',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.285, 0.24],
      'door_position': [-0.315, 0.252],
      'corridor_position': [-0.329, 0.252],
    },
    {
      'location': 'Room 328',
      'name': '328',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.285, 0.3],
      'door_position': [-0.315, 0.325],
      'corridor_position': [-0.329, 0.325],
    },
    {
      'location': 'Room 329',
      'name': '329',
      'icon': Icons.menu_book_rounded,
      'layout': 'horizontal',
      'status': true,
      'position': [-0.285, 0.372],
      'door_position': [-0.315, 0.399],
      'corridor_position': [-0.329, 0.399],
    },
  ];*/

  /*static const List corridorCheckPoint = [
    {
      'position': [0.3595, -0.288], // 316
    },
    {
      'position': [0.3285, -0.288], // 315
    },
    {
      'position': [0.299, -0.288], // 317
    },
    {
      'position': [0.255, -0.288], // 314
    },
    {
      'position': [0.234, -0.288], // 313
    },
    {
      'position': [0.225, -0.288], // 318
    },
    {
      'position': [0.18, -0.288], // 319
    },
    {
      'position': [0.132, -0.288], // 312
    },
    {
      'position': [0.107, -0.288], // WCM
    },
    {
      'position': [0.09, -0.288], // WCF
    },
    {
      'position': [0.07, -0.288], // B
    },
    {
      'position': [0.06, -0.288], // 311
    },
    {
      'position': [0.0362, -0.288], // Turn 1
    },
    {
      'position': [0.0362, -0.256], // Turn 2
    },
    {
      'position': [0.01, -0.256], // WCF
    },
    {
      'position': [-0.0025, -0.256], // WCM
    },
    {
      'position': [-0.005, -0.256], // 310
    },
    {
      'position': [-0.026, -0.256], // 309 done
    },
    {
      'position': [-0.034, -0.256], // B done
    },
    {
      'position': [-0.061, -0.256], // 308 done
    },
    {
      'position': [-0.078, -0.256], // 320 done
    },
    {
      'position': [-0.1, -0.256], // 307 done
    },
    {
      'position': [-0.117, -0.256], // 321 done
    },
    {
      'position': [-0.137, -0.256], // 306 done
    },
    {
      'position': [-0.163, -0.256], // 322 done
    },
    {
      'position': [-0.198, -0.256], // 305 done
    },
    {
      'position': [-0.2, -0.256], // 323 done
    },
    {
      'position': [-0.22, -0.256], // 304
    },
    {
      'position': [-0.257, -0.256], // 303
    },
    {
      'position': [-0.292, -0.256], // 302
    },
    {
      'position': [-0.326, -0.256], // 301
    },
    {
      'position': [-0.326, -0.207], // Turn 1
    },
    {
      'position': [-0.25, -0.207], // Turn 2
    },
    {
      'position': [-0.25, 0.015], // Turn 3
    },
    {
      'position': [-0.329, 0.015], // Turn 4
    },
    {
      'position': [-0.329, 0.091], // 333
    },
    {
      'position': [-0.329, 0.114], // WCF
    },
    {
      'position': [-0.329, 0.133], // WCM
    },
    {
      'position': [-0.329, 0.15], // 332
    },
    {
      'position': [-0.329, 0.205], // 327 TA
    },
    {
      'position': [-0.329, 0.252], // 327
    },
    {
      'position': [-0.329, 0.27], // 331
    },
    {
      'position': [-0.329, 0.325], // 328
    },
    {
      'position': [-0.329, 0.344], // 330
    },
    {
      'position': [-0.329, 0.399], // 329
    }
  ];
  */

  static const List grids = [
    {
      'grid_id': 1,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -69],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -85],
      'fingerprint_L3': ['00:12:17:7a:bd:81', -90],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -70],
      'fingerprint_R2': ['d0:d0:fd:66:4a:65', -78],
      'fingerprint_R3': ['f8:66:f2:ad:e8:bf', -90],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 2,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -64],
      'fingerprint_L2': ['00:12:17:7a:bd:81', -81],
      'fingerprint_L3': ['d0:d0:fd:66:4a:65', -84],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -70],
      'fingerprint_R2': ['d0:d0:fd:66:4a:65', -81],
      'fingerprint_R3': ['00:12:17:7a:bd:81', -84],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 3,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -59],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -90],
      'fingerprint_L3': ['d4:8c:b5:67:e8:af', -92],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -69],
      'fingerprint_R2': ['d0:d0:fd:66:4a:65', -83],
      'fingerprint_R3': ['00:12:17:7a:bd:81', -84],
      'corridor_position': [0.415, -0.288],
    },
    {
      'grid_id': 4,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -69],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -91],
      'fingerprint_L3': ['d0:d0:fd:66:4a:65', -92],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -70],
      'fingerprint_R2': ['00:12:17:7a:bd:81', -84],
      'fingerprint_R3': ['d0:d0:fd:66:4a:65', -81],
      'corridor_position': [0.403, -0.288],
    },
    {
      'grid_id': 5,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -64],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -89],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -63],
      'fingerprint_R2': ['50:57:a8:67:a7:73', -88],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -89],
      'corridor_position': [0.39, -0.288],
    },
    {
      'grid_id': 6,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -65],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -90],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -94],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -58],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -84],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -85],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 7,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -51],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -83],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -89],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -59],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -82],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -83],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 8,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -51],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -86],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -55],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -84],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -90],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 9,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -55],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -79],
      'fingerprint_L3': ['40:e3:d6:e0:13:30', -88],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -56],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -83],
      'fingerprint_R3': ['40:e3:d6:e0:13:30', -84],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 10,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -50],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -79],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -84],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -59],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -80],
      'fingerprint_R3': ['40:e3:d6:e0:13:30', -83],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 11,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -48],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -81],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -80],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -50],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -79],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -84],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 12,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -48],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -80],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -79],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -52],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -86],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -79],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 13,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -47],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -87],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -81],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -54],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -87],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -79],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 14,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -51],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -89],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -72],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -49],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -86],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -77],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 15,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -49],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -88],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -74],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -45],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -84],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -77],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 16,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -47],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -87],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -76],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -43],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -87],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -74],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 17,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -46],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -87],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -78],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -39],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -80],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -79],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 18,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -50],
      'fingerprint_L2': ['1c:df:0f:e4:94:cd', -85],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -83],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -41],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -82],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -78],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 19,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -47],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -81],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -76],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -46],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -82],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -80],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 20,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -56],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -87],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -89],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -49],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -78],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -84],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 21,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -64],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -89],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -90],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -55],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -77],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -84],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 22,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -67],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -87],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -90],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -60],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -78],
      'fingerprint_R3': ['1c:df:0f:e4:94:cd', -82],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 23,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -70],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -84],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -92],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -63],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -72],
      'fingerprint_R3': ['1c:df:0f:e4:94:cd', -81],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 24,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -67],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -82],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -84],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -63],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -71],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -81],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 25,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -69],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -80],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -86],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -60],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -69],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -80],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 26,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -69],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -68],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -80],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -63],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -71],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -78],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 27,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -64],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -75],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -82],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -67],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -72],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -82],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 28,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -76],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -74],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -86],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -69],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -76],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -80],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 29,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -73],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -77],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -86],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -66],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -72],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -80],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 30,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -66],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -73],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -79],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -66],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -73],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -79],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 31,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -62],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -71],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -77],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -59],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -64],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -73],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 32,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -57],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -61],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -74],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -65],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -52],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -60],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 33,
      'status': true,
      'fingerprint_L1': ['40:e3:d6:e0:13:20', -72],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -58],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -70],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -72],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -49],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -60],
      'corridor_position': [-0.078, -0.256],
    },
    {
      'grid_id': 34,
      'status': true,
      'fingerprint_L1': ['40:e3:d6:e0:13:20', -74],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -56],
      'fingerprint_L3': ['40:e3:d6:e0:25:50', -68],
      'fingerprint_R1': ['40:e3:d6:e0:13:30', -50],
      'fingerprint_R2': ['40:e3:d6:e0:13:20', -73],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -50],
      'corridor_position': [-0.078, -0.256],
    },
  ];
}
