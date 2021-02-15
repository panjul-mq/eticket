part of 'pages.dart';

class ForgotPassPage extends StatefulWidget {
  @override
  _ForgotPassPageState createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white10,elevation: 0,iconTheme: IconThemeData(color:Colors.black)),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reset password',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                    'Enter the email associated with your account and we`ll send an email with instructions to reset your password',
                    style: TextStyle(
                      fontSize: 12,color: Colors.deepPurple
                    ),
                  ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                      style: TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue)))),
                ],
              ),
            ),
            FlatButton(
                onPressed: () {Navigator.pushNamed(context, '/email');},
                child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Send intructions',
                      style: TextStyle(color: Colors.white),
                    )))),
          ],
        ),
      ),
    );
  }
}
