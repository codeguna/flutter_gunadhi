import 'package:flutter/material.dart';

void main() => runApp(Mahasiswa());

Widget _buildTextSection(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(fontSize: textSize),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}

class Mahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(15),
      child: Text(
        'Status Kehadiran 0%',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget desriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'Hadir: 0   '
          'Alpha: 0',
          textAlign: TextAlign.left,
        ));

    Widget listMahasiswa = Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Text(
          'Arga Dirgantara',
          textAlign: TextAlign.left,
        ));

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back_ios, color: Colors.black),
            title: Text(
              'Presensi',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: ListView(
            children: [
              titleSection,
              desriptionSection,
              listMahasiswa,
            ],
          )),
    );
  }
}
