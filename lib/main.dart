import 'package:eticket/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        //routes: {
        //  '/signin':(context)=>Login(),
        //  '/signup':(context)=>SignUpPage(),
        //  '/forgotpass':(context)=>Resetpass(),
        //},
      ),
    );
  }
}