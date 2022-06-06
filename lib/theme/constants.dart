library constants;

import 'package:flutter/material.dart';

const int relativeWidth = 428; //iPhone 13 Pro Max screen width
const int relativeHeight = 926; //iPhone 14 Pro Max screen width

double rw(BuildContext context) {
  return rWidth(MediaQuery.of(context).size.width);
}

double rWidth(double width) {
  return width / relativeWidth;
}

double grw(BuildContext context) {
  final grw = rw(context);
  return grw < 1 ? 1 : grw;
}

double rh(BuildContext context) {
  return rHeight(MediaQuery.of(context).size.height);
}

double rHeight(double width) {
  return width / relativeWidth;
}

double grh(BuildContext context) {
  final grh = rh(context);
  return grh < 1 ? 1 : grh;
}
