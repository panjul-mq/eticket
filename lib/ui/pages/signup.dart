part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameText = new TextEditingController();
  TextEditingController emailText = new TextEditingController();
  TextEditingController passwordText = new TextEditingController();
  TextEditingController numberPhoneText = new TextEditingController();

  void notif(){
    int count = 0;

    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 100.0,
        child: Column(
          children: <Widget>[
            Text("Registrasi Berhasil"),
            RaisedButton(
              child: Text("OK"),
              onPressed: () => Navigator.of(context).popUntil((_) => count++ >= 2))
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Hello!",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("Signup to",
                            style: TextStyle(color: Colors.black54, fontSize: 35)),
                        SizedBox(height: 5),
                        Text("get started",
                            style: TextStyle(color: Colors.black54, fontSize: 35))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        child: Column(
                          children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(25,10,25,10),
                            child: TextField(
                              controller: usernameText,
                              decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25,5,25,5),
                            child: TextField(
                              controller: numberPhoneText,
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25,5,25,5),
                            child: TextField(
                              controller: emailText,
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(25,5,25,5),
                            child: TextField(
                              controller: passwordText,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                              style: TextStyle(fontSize: 17),
                              obscureText: true,
                            ),
                          ),
                        ]
                      )),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () async {
                          SignInSingUpResult result = await AuthServices.signUp(
                            emailText.text, 
                            passwordText.text, 
                            usernameText.text, 
                            numberPhoneText.text);
                          
                          if (result.user == null){
                            print(result.massage);
                          } else {
                            notif();
                            print(result.user.toString());
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.greenAccent),
                            child: Center(
                              child: Text("Sign Up",
                                  style: TextStyle(color: Colors.white, fontSize: 17)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/signin');
                            },
                            child: Container(
                              child: Text("Sign In",
                                  style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
