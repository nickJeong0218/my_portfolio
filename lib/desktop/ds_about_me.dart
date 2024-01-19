import 'package:flutter/material.dart';
import '../data/data_values.dart';
import 'package:url_launcher/url_launcher.dart';

class DSAboutMe extends StatelessWidget {
  const DSAboutMe({Key? key}) : super(key: key);

  void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch ${url.toString()}';
    }
  }

  Widget buildIntro() {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(40),
        child: const Text(
          DataValues.externalLinksTitle,
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
          DataValues.externalLinksDescription,
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

  Widget buildNameCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 1100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green, width: 2)),
      child: Row(children: [
        Image(
          image: const AssetImage('assets/profile.jpg'),
          width: 160,
          height: 200,
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                child: IconButton(
                    icon: const Icon(Icons.alternate_email_outlined),
                    onPressed: () {
                      _launchURL(DataValues.emailUrl);
                    },
                    iconSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.centerRight,
                child: const Text(
                  'Email: nickyjeong0218@gmail.com',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ]),
            const SizedBox(height: 25),
            Row(children: [
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                child: IconButton(
                    icon: const Icon(Icons.developer_mode_outlined),
                    onPressed: () {
                      _launchURL(DataValues.githubUrl);
                    },
                    iconSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'GitHub: ${DataValues.githubUrl.toString()}',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ]),
            const SizedBox(height: 25),
            Row(children: [
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                child: IconButton(
                    icon: const Icon(Icons.people_alt_outlined),
                    onPressed: () {
                      _launchURL(DataValues.linkedinUrl);
                    },
                    iconSize: 25,
                    color: Colors.white),
              ),
              const SizedBox(width: 10),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'LinkedIn: ${DataValues.linkedinUrl.toString()}',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ]),
          ],
        )
      ]),
    );
  }

  Widget buildResume() {
    return Container(
        padding: const EdgeInsets.all(20),
        width: 1100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: const Image(
          image: const AssetImage('assets/YunhwanJeong_resume.jpg'),
        ));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DataValues.appTitleLong),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            buildIntro(),
            const SizedBox(height: 50),
            buildNameCard(),
            const SizedBox(height: 50),
            buildResume(),
            const SizedBox(height: 250),
            buildTail(),
          ],
        ),
      ),
    );
  }
}
