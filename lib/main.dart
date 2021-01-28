import 'package:flutter/material.dart';
import 'services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Sign Up"),
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                    "santriquarta@gmail.com", 
                    "makanbang", 
                    "dzulkifli", 
                    ["comedy", "horor", "creepy"], 
                    "Jawa"
                  );
                  
                  if (result.user == null) {
                    print(result.massage);
                  } else {
                    print(result.user.toString());
                  }
                }),
              RaisedButton(
                child: Text("Sign In"),
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signIn(
                    "santriquarta@gmail.com", 
                    "makanbang",
                  );
                  
                  if (result.user == null) {
                    print(result.massage);
                  } else {
                    print(result.user.toString());
                  }
                })
            ],
          ),
        ),
      ),
    );
  }
}
