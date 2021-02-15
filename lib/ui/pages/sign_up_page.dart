part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          Container(
        margin: EdgeInsets.only(top:50),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text('Signup to', style: TextStyle(fontSize: 26,),),
                Text('get started', style: TextStyle(fontSize: 26,),),
                SizedBox(height: 40),
                TextField(
                  controller: username,
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)  
                    )
                  )
                ),
                SizedBox(height: 10),
                TextField(
                  controller: email,
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)  
                    )
                  )
                ),
                SizedBox(height: 10),
                TextField(
                  controller: phoneNumber,
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)  
                    )
                  )
                ),
                SizedBox(height: 10),
                TextField(
                  controller: password,
                  style: TextStyle(
                    fontSize: 13, 
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)  
                    )
                  )
                ),
              ],
            ),
            ),
            FlatButton(
                  onPressed: (){
                    AuthServices.signUp(email.text, password.text, username.text, phoneNumber.text);
                  }, 
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Center(
                    child:Text('Sign Up', style: TextStyle(color: Colors.white),)
                  )
                  )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Already have an account?',style: TextStyle(color: Colors.grey, fontSize: 12)),
                  FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/signIn');
                    }, 
                    child: Text('Sign In',style: TextStyle(color: Colors.deepPurple, fontSize: 12))
                  )
                ]
              ),
            )
          ],
        ),),
        SizedBox(height: 40,)
        ]
      )
    );
  }
}