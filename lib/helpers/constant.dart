import 'package:flutter/material.dart';

class Appsizes {
  static SizedBox kh20 = const SizedBox(height: 20);
  static SizedBox kh10 = const SizedBox(height: 10);
}

class MyObject {
  String title;
  int count;
  Icon icons;

  MyObject({required this.title, required this.count, required this.icons});
}

List<MyObject> myObjects = [
  MyObject(
      title: 'Total Owner',
      count: 25,
      icons: const Icon(
        Icons.perm_contact_cal_sharp,
        color: Colors.amber,
      )),
  MyObject(
      title: 'Total Property',
      count: 30,
      icons: const Icon(
        Icons.home,
        color: Colors.blue,
      )),
  MyObject(
      title: 'Total Unit',
      count: 100,
      icons: const Icon(
        Icons.tab_unselected_outlined,
        color: Colors.orange,
      )),
  MyObject(
      title: 'Total Tenant',
      count: 80,
      icons: const Icon(
        Icons.person,
        color: Colors.green,
      )),
  // Add more objects as needed
];
