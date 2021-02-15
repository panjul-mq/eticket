part of 'pages.dart';

class EmailPage extends StatefulWidget {
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white10,elevation: 0,iconTheme: IconThemeData(color:Colors.black),),
      body: Container(
        margin: EdgeInsets.only(top: size.height * .05),
        padding: EdgeInsets.all(2),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * .3,
                    height: size.height * .3,
                    child: Image.asset('assets/images/message.png'),
                  ),
                  Text(
                    'Check your email',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'we have sent a password recover',
                    style: TextStyle(
                      fontSize: 12,color: Colors.deepPurple
                    ),
                  ),
                  Text(
                    'instructions to your email',
                    style: TextStyle(
                      fontSize: 12,color: Colors.deepPurple
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            FlatButton(
                onPressed: () {},
                child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Open email app',
                      style: TextStyle(color: Colors.white),
                    )))),
            FlatButton(
              onPressed: (){}, 
              child: Text('Skip, i`ll confirm later', style: TextStyle(color:Colors.deepPurple, fontSize: 12),)
            )
          ],
        ),
      ),
    );
  }
}
