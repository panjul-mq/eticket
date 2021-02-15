part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    'back',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                      controller: emailText,
                      style: TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue)))),
                  SizedBox(height: 10),
                  TextField(
                    controller: passwordText,
                    obscureText: true,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue)))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgot');
                          },
                          child: Text(
                            'forgot password ?',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 12),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            FlatButton(
                onPressed: () {
                  AuthServices.signIn(emailText.text,passwordText.text);
                  
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    )))),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Dont have an account?',style: TextStyle(color: Colors.grey, fontSize: 12)),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/signUp');
                    }, 
                    child: Text('Sign Up',style: TextStyle(color: Colors.deepPurple, fontSize: 12))
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
