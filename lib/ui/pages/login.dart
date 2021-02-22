part of 'pages.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();

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
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Hello!",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("Welcome",
                            style: TextStyle(color: Colors.black54, fontSize: 40)),
                        SizedBox(height: 5),
                        Text("back",
                            style: TextStyle(color: Colors.black54, fontSize: 40))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Container(
                          child: Column(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25,10,25,10),
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
                          padding: EdgeInsets.fromLTRB(25,10,25,10),
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
                        )
                      ])),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/forgotpass');
                            },
                            child: Container(
                              padding: EdgeInsets.only(right: 15),
                              child: Text("Forgot Password ?",
                                  style: TextStyle(color: Colors.grey, fontSize: 15)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          try {
                            AuthServices.signIn(emailText.text, passwordText.text);

                          Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return Home();
                          }));
                          } catch (e) {
                            
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.greenAccent),
                            child: Center(
                              child: Text("Sign In",
                                style: TextStyle(color: Colors.white, fontSize: 17)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Container(
                              child: Text("Sign Up",
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
