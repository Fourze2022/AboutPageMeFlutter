import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Page',
      home: Scaffold(
        backgroundColor: Color(0xFF141414),
        body: Center(
          child: AboutPage(),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        color: Color(0xFF141414),
        child: Column(
          children: [
            HeaderSection(),
            DividerSection(),
            InfoSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CircleAvatar(
          radius: 62.5,
          backgroundColor: Colors.grey[800],
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profile.JPG'),
            radius: 60,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Satria Jati Kusuma',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          '5026221165',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          '21 he/him ID | ENTP | Libra',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}

class DividerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildDividerColumn('0', 'Posts'),
        Container(
          height: 30,
          child: VerticalDivider(color: Colors.grey),
        ),
        buildDividerColumn('0', 'Followers'),
        Container(
          height: 30,
          child: VerticalDivider(color: Colors.grey),
        ),
        buildDividerColumn('0', 'Following'),
      ],
    );
  }

  Column buildDividerColumn(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(number, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.white)),
      ],
    );
  }
}

class InfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcademicLikesDislikes(title: 'Academics', content: 'Bachelor\'s degree, Information Systems\nCurrently in third year\nIntelligent Electrical and Informatics Technology\nSepuluh Nopember Institute of Technology'),
        AcademicLikesDislikes(title: 'Likes', content: 'Success, progress, discussion, doing research, music, art, cool things, culinary, cold, dark, +more'),
        AcademicLikesDislikes(title: 'Dislikes', content: 'Unplanned act, failing, insects, horror, creepy things, hot, bright, crowded places, +more'),
      ],
    );
  }
}

class AcademicLikesDislikes extends StatelessWidget {
  final String title;
  final String content;

  AcademicLikesDislikes({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 4),
          Text(content, style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
