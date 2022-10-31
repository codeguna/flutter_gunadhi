import 'package:flutter/material.dart';

void main() => runApp(ProfileGuna());

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

class ProfileGuna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('images/profile.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Gunadhi Pratama',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget desriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          '/gu.nad.hi/ adalah Mahasiswa dari Jurusan Sistem Informasi, '
          '\nMengambil kelas Profesional atau Karyawan dengan kelas 4SIP-01, '
          '\nMempunyai NRP 220534003',
          textAlign: TextAlign.center,
        ));

    Widget rateSection = Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        rateSection,
        Text('456 Good Reviews about This Person'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMenuSection(Icons.person, "Nickname", "Guna"),
        _buildMenuSection(
            Icons.center_focus_strong_outlined, "NRP", "220534003"),
        _buildMenuSection(Icons.perm_device_info, "Kelas", "4SIP-1"),
      ],
    );

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back_ios, color: Colors.black),
            title: Text(
              'Profile - Gunadhi Pratama',
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
          ),
          body: ListView(
            children: [
              imageSection,
              titleSection,
              desriptionSection,
              Container(
                padding: EdgeInsets.only(bottom: 24),
                child: reviewSection,
              ),
              menuSection,
            ],
          )),
    );
  }
}
