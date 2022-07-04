import 'package:flutter/material.dart';

class AppPaddings {
  static Padding pagePadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(30), child: child);
  static Padding smallPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(10), child: child);
  static Padding mediumPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(15), child: child);
  static Padding standartPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(20), child: child);
  static Padding imagePadding({Widget? child}) => Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 8,
        top: 40,
      ),
      child: child);
  static Padding verticalPadding({Widget? child}) => Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: child);

  static Padding symmetricPadding2({Widget? child}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: child);

  static Padding verticalPadding2({Widget? child}) => Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10), child: child);

  static Padding minPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(4), child: child);

  static Padding symmetricPadding({Widget? child}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15), child: child);
}
