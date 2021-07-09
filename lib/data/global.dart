import 'package:flutter/material.dart';

abstract class Global {
  static Color primaryColor = Colors.white; //Colors.blue[900];
  static Color secondaryColor = Colors.blue[900]; //Colors.white;

  static const List grids = [
    {
      //unused
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
      //unused
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
      'corridor_position': [0.355, -0.288],
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
      'corridor_position': [0.34, -0.288],
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
      'corridor_position': [0.32, -0.288],
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
      'corridor_position': [0.3, -0.288],
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
      'corridor_position': [0.283, -0.288],
    },
    {
      //unused
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
      'corridor_position': [0.268, -0.288],
    },
    {
      //unused
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
      'corridor_position': [0.252, -0.288],
    },
    {
      //unused
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
      //unused
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
      'corridor_position': [0.234, -0.288],
    },
    {
      //unused
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
      'corridor_position': [0.213, -0.288],
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
      'corridor_position': [0.195, -0.288],
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
      'corridor_position': [0.175, -0.288],
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
      'corridor_position': [0.155, -0.288],
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
      'corridor_position': [0.134, -0.288],
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
      'corridor_position': [0.111, -0.288],
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
      'corridor_position': [0.09, -0.288],
    },
    {
      //unused
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
      'corridor_position': [0.07, -0.288],
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
      'corridor_position': [0.053, -0.288],
    },
    {
      //unused
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
      //unused
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
      'corridor_position': [0.036, -0.294],
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
      'corridor_position': [0.036, -0.274],
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
      'corridor_position': [0.036, -0.254],
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
      'corridor_position': [0.036, -0.234],
    },
    //311 grid 1,2
    {
      'grid_id': 35,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:1f', -68],
      'fingerprint_L2': ['ac:f2:c5:97:33:a9', -80],
      'fingerprint_L3': ['40:e3:d6:e0:13:30', -88],
      'fingerprint_R1': ['ac:f2:c5:97:33:1f', -69],
      'fingerprint_R2': ['ac:f2:c5:97:33:a9', -78],
      'fingerprint_R3': ['40:e3:d6:e0:13:30', -90],
      'corridor_position': [0.06, -0.33],
    },
    //311 grid 3,4
    {
      'grid_id': 36,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:1f', -70],
      'fingerprint_L2': ['ac:f2:c5:97:33:a9', -82],
      'fingerprint_L3': ['40:e3:d6:e0:13:30', -85],
      'fingerprint_R1': ['ac:f2:c5:97:33:1f', -72],
      'fingerprint_R2': ['ac:f2:c5:97:33:a9', -81],
      'fingerprint_R3': ['40:e3:d6:e0:13:30', -89],
      'corridor_position': [0.075, -0.33],
    },
    //311 grid 5,6
    {
      'grid_id': 37,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:1f', -69],
      'fingerprint_L2': ['ac:f2:c5:97:33:a9', -83],
      'fingerprint_L3': ['40:e3:d6:e0:13:30', -84],
      'fingerprint_R1': ['ac:f2:c5:97:33:1f', -76],
      'fingerprint_R2': ['ac:f2:c5:97:33:a9', -77],
      'fingerprint_R3': ['40:e3:d6:e0:13:30', -89],
      'corridor_position': [0.09, -0.33],
    },
    //311 grid 7,8
    {
      'grid_id': 38,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:1f', -72],
      'fingerprint_L2': ['ac:f2:c5:97:33:a9', -84],
      'fingerprint_L3': ['40:e3:d6:e0:13:30', -84],
      'fingerprint_R1': ['ac:f2:c5:97:33:1f', -74],
      'fingerprint_R2': ['ac:f2:c5:97:33:a9', -78],
      'fingerprint_R3': ['40:e3:d6:e0:13:30', -91],
      'corridor_position': [0.105, -0.33],
    },
    //322 grid 1,2
    {
      'grid_id': 39,
      'status': true,
      'fingerprint_L1': ['40:e3:d6:e0:25:50', -70],
      'fingerprint_L2': ['40:e3:d6:e0:13:20', -70],
      'fingerprint_L3': ['40:e3:d6:e0:25:40', -71],
      'fingerprint_R1': ['40:e3:d6:e0:25:50', -74],
      'fingerprint_R2': ['40:e3:d6:e0:13:20', -70],
      'fingerprint_R3': ['40:e3:d6:e0:25:40', -76],
      'corridor_position': [-0.15, -0.225],
    },
    //322 grid 3,4
    {
      'grid_id': 40,
      'status': true,
      'fingerprint_L1': ['94:b4:0f:8d:29:30', -72],
      'fingerprint_L2': ['40:e3:d6:e0:25:50', -73],
      'fingerprint_L3': ['40:e3:d6:e0:13:30', -75],
      'fingerprint_R1': ['94:b4:0f:8d:29:30', -81],
      'fingerprint_R2': ['94:b4:0f:8d:29:20', -71],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -77],
      'corridor_position': [-0.15, -0.2],
    },
    //307 grid 1,2
    {
      'grid_id': 41,
      'status': true,
      'fingerprint_L1': ['40:e3:d6:e0:13:20', -67],
      'fingerprint_L2': ['40:e3:d6:e0:13:30', -71],
      'fingerprint_L3': ['ac:f2:c5:97:33:1f', -87],
      'fingerprint_R1': ['40:e3:d6:e0:13:30', -61],
      'fingerprint_R2': ['ac:f2:c5:97:33:1f', -85],
      'fingerprint_R3': ['40:e3:d6:de:4f:20', -86],
      'corridor_position': [-0.108, -0.32],
    },
    //307 grid 3,4
    {
      'grid_id': 42,
      'status': true,
      'fingerprint_L1': ['40:e3:d6:e0:13:30', -65],
      'fingerprint_L2': ['40:e3:d6:e0:13:20', -73],
      'fingerprint_L3': ['40:e3:d6:e0:25:40', -83],
      'fingerprint_R1': ['40:e3:d6:e0:13:30', -58],
      'fingerprint_R2': ['ac:f2:c5:97:33:1f', -80],
      'fingerprint_R3': ['40:e3:d6:e0:25:50', -84],
      'corridor_position': [-0.108, -0.29],
    },
    //312 grid 1,2
    {
      'grid_id': 43,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -73],
      'fingerprint_L2': ['ac:f2:c5:97:33:1f', -83],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -92],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -66],
      'fingerprint_R2': ['ac:f2:c5:97:33:1f', -83],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -93],
      'corridor_position': [0.14, -0.33],
    },
    //312 grid 3,4
    {
      'grid_id': 44,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -82],
      'fingerprint_L2': ['ac:f2:c5:97:33:1f', -89],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -94],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -71],
      'fingerprint_R2': ['ac:f2:c5:97:33:1f', -85],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -89],
      'corridor_position': [0.16, -0.33],
    },
    //312 grid 5,6
    {
      'grid_id': 45,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -75],
      'fingerprint_L2': ['ac:f2:c5:97:33:1f', -87],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -62],
      'fingerprint_R2': ['ac:f2:c5:97:33:1f', -80],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -89],
      'corridor_position': [0.18, -0.33],
    },
    //312 grid 7,8
    {
      'grid_id': 46,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -74],
      'fingerprint_L2': ['ac:f2:c5:97:33:1f', -88],
      'fingerprint_L3': ['50:57:a8:67:a7:73', -92],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -66],
      'fingerprint_R2': ['ac:f2:c5:97:33:1f', -87],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -91],
      'corridor_position': [0.2, -0.33],
    },
    //314 grid 1,2
    {
      'grid_id': 47,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -76],
      'fingerprint_L2': ['50:57:a8:67:a7:73', -92],
      'fingerprint_L3': ['d4:8c:b5:67:e8:af', -94],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -65],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -92],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -93],
      'corridor_position': [0.26, -0.33],
    },
    //314 grid 3,4
    {
      'grid_id': 48,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -77],
      'fingerprint_L2': ['50:57:a8:67:a7:73', -91],
      'fingerprint_L3': ['d4:8c:b5:67:e8:af', -95],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -70],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -88],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -93],
      'corridor_position': [0.275, -0.33],
    },
    //314 grid 5,6
    {
      'grid_id': 49,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -73],
      'fingerprint_L2': ['50:57:a8:67:a7:73', -92],
      'fingerprint_L3': ['d4:8c:b5:67:e8:af', -95],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -79],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -90],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -94],
      'corridor_position': [0.29, -0.33],
    },
    //314 grid 7,8
    {
      'grid_id': 50,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -78],
      'fingerprint_L2': ['50:57:a8:67:a7:73', -92],
      'fingerprint_L3': ['d4:8c:b5:67:e8:af', -99],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -71],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -88],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -93],
      'corridor_position': [0.305, -0.33],
    },
    //315 grid 1,2
    {
      'grid_id': 51,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -80],
      'fingerprint_L2': ['1c:df:0f:e4:94:cd', -90],
      'fingerprint_L3': ['d0:d0:fd:66:4a:65', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -82],
      'fingerprint_R2': ['00:12:17:7a:bd:81', -93],
      'fingerprint_R3': ['ac:f2:c5:97:33:11', -96],
      'corridor_position': [0.335, -0.33],
    },
    //315 grid 3,4
    {
      'grid_id': 52,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -86],
      'fingerprint_L2': ['1a:48:ca:28:2c:6e', -93],
      'fingerprint_L3': ['02:72:83:83:45:34', -95],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -88],
      'fingerprint_R2': ['00:12:17:7a:bd:81', -92],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -94],
      'corridor_position': [0.35, -0.33],
    },
    //315 grid 5,6
    {
      'grid_id': 53,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -76],
      'fingerprint_L2': ['00:12:17:7a:bd:81', -94],
      'fingerprint_L3': ['02:72:83:83:45:34', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -81],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -95],
      'fingerprint_R3': ['d0:d0:fd:66:4a:65', -96],
      'corridor_position': [0.365, -0.33],
    },
    //315 grid 7,8
    {
      'grid_id': 54,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -80],
      'fingerprint_L2': ['00:12:17:7a:bd:81', -96],
      'fingerprint_L3': ['d0:d0:fd:66:4a:65', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -79],
      'fingerprint_R2': ['02:72:83:83:45:34', -88],
      'fingerprint_R3': ['d0:d0:fd:66:4a:65', -94],
      'corridor_position': [0.38, -0.33],
    },
    //316 grid 1,2
    {
      'grid_id': 55,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -78],
      'fingerprint_L2': ['1c:df:0f:e4:94:cd', -84],
      'fingerprint_L3': ['d0:d0:fd:66:4a:65', -85],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -68],
      'fingerprint_R2': ['1c:df:0f:e4:94:cd', -89],
      'fingerprint_R3': ['d0:d0:fd:66:4a:65', -93],
      'corridor_position': [0.378, -0.245],
    },
    //316 grid 3,4
    {
      'grid_id': 56,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -86],
      'fingerprint_L2': ['1a:48:ca:28:2c:6e', -93],
      'fingerprint_L3': ['02:72:83:83:45:34', -95],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -88],
      'fingerprint_R2': ['00:12:17:7a:bd:81', -92],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -94],
      'corridor_position': [0.362, -0.245],
    },
    //316 grid 5,6
    {
      'grid_id': 57,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -76],
      'fingerprint_L2': ['00:12:17:7a:bd:81', -94],
      'fingerprint_L3': ['02:72:83:83:45:34', -91],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -81],
      'fingerprint_R2': ['d4:8c:b5:67:e8:af', -95],
      'fingerprint_R3': ['d0:d0:fd:66:4a:65', -96],
      'corridor_position': [0.347, -0.245],
    },
    //316 grid 7,8
    {
      'grid_id': 58,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -79],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -94],
      'fingerprint_L3': ['02:72:83:83:45:34', -88],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -80],
      'fingerprint_R2': ['00:12:17:7a:bd:81', -96],
      'fingerprint_R3': ['d0:d0:fd:66:4a:65', -91],
      'corridor_position': [0.33, -0.245],
    },
    //317 grid 1,2
    {
      'grid_id': 59,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -71],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -84],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -83],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -64],
      'fingerprint_R2': ['1c:df:0f:e4:94:cd', -81],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -91],
      'corridor_position': [0.29, -0.245],
    },
    //317 grid 3,4
    {
      'grid_id': 60,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -72],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -88],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -83],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -62],
      'fingerprint_R2': ['1c:df:0f:e4:94:cd', -83],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -88],
      'corridor_position': [0.275, -0.245],
    },
    //317 grid 5,6
    {
      'grid_id': 61,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -74],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -79],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -85],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -62],
      'fingerprint_R2': ['1c:df:0f:e4:94:cd', -85],
      'fingerprint_R3': ['50:57:a8:67:a7:73', -91],
      'corridor_position': [0.26, -0.245],
    },
    //317 grid 7,8
    {
      'grid_id': 62,
      'status': true,
      'fingerprint_L1': ['ac:f2:c5:97:33:a9', -73],
      'fingerprint_L2': ['d0:d0:fd:66:4a:65', -87],
      'fingerprint_L3': ['1c:df:0f:e4:94:cd', -81],
      'fingerprint_R1': ['ac:f2:c5:97:33:a9', -64],
      'fingerprint_R2': ['1c:df:0f:e4:94:cd', -86],
      'fingerprint_R3': ['d4:8c:b5:67:e8:af', -92],
      'corridor_position': [0.245, -0.245],
    },
  ];
}
