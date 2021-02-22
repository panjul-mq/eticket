part of 'pages.dart';

class Resetpass extends StatefulWidget {
  @override
  _ResetpassState createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  TextEditingController emailText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        automaticallyImplyLeading: true,
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: PageView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Reset password",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(height: 5),
                        Text(
                          "Enter the email associated with your account and we'll send an email with instructions to reset your password",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Container(
                          child: Column(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
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
                      ])),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          try {
                            AuthServices.resetPassword(emailText.text);

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Check();
                          }));
                          } catch (e) {
                            print("Gagal");
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
                              child: Text("Send Instruction",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17)),
                            ),
                          ),
                        ),
                      ),
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
