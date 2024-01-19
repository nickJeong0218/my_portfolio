import 'package:flutter/material.dart';
import '../data/data_values.dart';

class DSBiography extends StatelessWidget {
  const DSBiography({Key? key}) : super(key: key);

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
      body: Center(child: Text('Biography')),
    );
  }
}
