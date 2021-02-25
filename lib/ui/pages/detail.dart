part of 'pages.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://image.freepik.com/free-photo/fried-rice-nasi-goreng-indonesian-dish_262958-1512.jpg"),
                fit: BoxFit.fill
              )
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.close, color: Colors.white),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    shape: BoxShape.circle
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nama Makanan", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Text("Rp.20.000", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Deskripsi Makanan ini", style: TextStyle(fontSize: 18),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Instruksi khusus",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
                    SizedBox(width: 10,),
                    Text("tidak wajib",style: TextStyle(fontSize: 18),)
                  ],
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Mas Jangan pedes-pedes y"
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      child: Center(
                        child: Text("-", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38)
                      ),
                    ),
                SizedBox(height: 20,),
                    Text("0", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                    Container(
                      width: 40,
                      child: Center(
                        child: Text("+", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38)
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: RaisedButton(
        onPressed: null,
        color: Colors.grey[900],
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Text("tambah ke keranjang",style: TextStyle(fontSize: 40, color: Colors.white),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account")
          ],
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.blueAccent,
        )
    );
  }
}