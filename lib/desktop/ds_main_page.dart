import 'package:flutter/material.dart';
import '../data/data_values.dart';

class DSMainPage extends StatelessWidget {
  const DSMainPage({Key? key}) : super(key: key);

  Widget buildCategory(String category) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        minimumSize: const Size(250, 140),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        category,
        style: const TextStyle(
          color: Colors.green,
          fontSize: 36,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {
        print('Tapped on $category');
      },
    );
  }

  Widget buildIntro() {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(40),
        child: const Text(
          DataValues.appTitle,
          style: TextStyle(
            color: Colors.green,
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 50),
      Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: const Text(
          DataValues.appDescription,
          style: TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.green,
            height: 2,
          ))
        ],
      ),
    ]);
  }

  Widget buildMainPage() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCategory('About Me'),
              SizedBox(width: 40),
              buildCategory('Biography'),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCategory('Education'),
              SizedBox(width: 40),
              buildCategory('Experience'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTail() {
    return const Column(
      children: [
        Text(
          '© 2021 Yunhwan Jeong. All rights reserved.',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          DataValues.appDeveloper,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          DataValues.appVersion,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  //TODO: Handle overflow
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildIntro(),
        SizedBox(height: 250),
        buildMainPage(),
        SizedBox(height: 250),
        buildTail(),
      ],
    );
  }
}
