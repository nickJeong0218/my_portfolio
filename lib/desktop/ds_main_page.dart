import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop/ds_biography.dart';
import 'package:my_portfolio/desktop/ds_education.dart';
import 'package:my_portfolio/desktop/ds_experiences.dart';
import '../data/data_values.dart';
import 'ds_about_me.dart';

class DSMainPage extends StatelessWidget {
  const DSMainPage({Key? key}) : super(key: key);

  Widget buildCategory(String category, BuildContext context) {
    return Container(
      child: ElevatedButton(
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
            if (category.contains('About Me')) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DSAboutMe()));
            }
            if (category.contains('Biography')) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DSBiography()));
            }
            if (category.contains('Education')) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DSEducation()));
            }
            if (category.contains('Experience')) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DSExpProject()));
            }
          }),
    );
  }

  Widget buildIntro() {
    return Container(
      child: Column(children: [
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
      ]),
    );
  }

  Widget buildMainPage(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCategory('About Me', context),
              SizedBox(width: 40),
              buildCategory('Biography', context),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCategory('Education', context),
              SizedBox(width: 40),
              buildCategory('Experience', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTail() {
    return Container(
      child: const Column(
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
      ),
    );
  }

  //TODO: Handle overflow
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DataValues.appTitleLong),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            buildIntro(),
            SizedBox(height: 250),
            buildMainPage(context),
            SizedBox(height: 250),
            buildTail(),
          ],
        ),
      ),
    );
  }
}
