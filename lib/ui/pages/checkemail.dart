part of 'pages.dart';

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            "Check your email",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text(
                "We have sent a password recover instructions to your email.",
                style: TextStyle(fontSize: 15, color: Colors.black54),
                textAlign: TextAlign.center,
              )),
          GestureDetector(
            onTap: () {
              DeviceApps.openApp('com.google.android.gm');
            },
            child: Container(
              padding: EdgeInsets.all(30),
              child: Container(
                height: 60,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent),
                child: Center(
                  child: Text("Open Email App",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgotpass');
                },
                child: Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text("Skip, i'll confirm later",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
