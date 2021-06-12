import 'package:flutter/material.dart';

abstract class Global {
  static Color primaryColor = Colors.white; //Colors.blue[900];
  static Color secondaryColor = Colors.blue[900]; //Colors.white;

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
      'corridor_position': [0.39, -0.288],
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
      'corridor_position': [0.415, -0.288],
    },
    // ====== TEST GRID ======
    {
      'grid_id': 100,
      'status': true,
      'fingerprint_L1': ['d4:6b:a6:91:26:74', -41],
      'fingerprint_L2': ['30:74:96:0e:f6:50', -40],
      'fingerprint_L3': ['1e:d9:a0:84:46:41', -60],
      'fingerprint_R1': ['d4:6b:a6:91:26:74', -41],
      'fingerprint_R2': ['30:74:96:0e:f6:50', -40],
      'fingerprint_R3': ['1e:d9:a0:84:46:41', -60],
      'corridor_position': [0.39, -0.288],
    },
    {
      'grid_id': 200,
      'status': true,
      'fingerprint_L1': ['d4:6b:a6:91:26:74', -44],
      'fingerprint_L2': ['30:74:96:0e:f6:50', -50],
      'fingerprint_L3': ['1e:d9:a0:84:46:41', -53],
      'fingerprint_R1': ['d4:6b:a6:91:26:74', -44],
      'fingerprint_R2': ['30:74:96:0e:f6:50', -50],
      'fingerprint_R3': ['1e:d9:a0:84:46:41', -53],
      'corridor_position': [0.415, -0.288],
    },
    // ========================
    {
      'grid_id': 6,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -65],
      'fingerprint_L2': ['d4:8c:b5:67:e8:af', -90],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -94],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -58],
      'fingerprint_R2': ['40:e3:d6:e0:13:30', -84],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -85],
      'corridor_position': [0.375, -0.288],
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