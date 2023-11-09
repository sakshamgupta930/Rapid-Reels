import 'dart:math';

import 'package:flutter/material.dart';

getRandomColor() => [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.greenAccent,
    ][Random().nextInt(3)];

const backgroundColor = Colors.black;
var buttonColor = Color(0xFFFE2C55);
const borderColor = Colors.grey;
