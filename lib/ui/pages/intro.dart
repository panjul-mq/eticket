part of 'pages.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(20),
            child: Text("Terdekat"),
          )
        ],
      ),
    );
  }
}