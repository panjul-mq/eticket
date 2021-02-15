part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/signIn' : (context)=>SignInPage(),
          '/signUp' : (context)=>SignUpPage(),
          '/forgot' : (context)=>ForgotPassPage(),
          '/email' : (context)=>EmailPage(),
        },
        home: Wrapper(),
      ),
    );
  }
}