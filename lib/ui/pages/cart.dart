part of 'pages.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                IconButton(icon: Icon(Icons.delete_outline), onPressed: () {})
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pesanan",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Anda",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.place, color: Colors.orange, size: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blok Z9 No.12931 jalan mars",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Jl.saturnus No.32132 kp.Asteroid",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
                child: ListView.builder(
              shrinkWrap: true,
              itemCount: listCart.length,
              itemExtent: 80,
              itemBuilder: (context, i) {
                return ListTile(
                    subtitle: Text(
                      "Rp " + listCart[i]['price'].toString(),
                      style: TextStyle(fontSize: 15, color: Colors.purple),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(listCart[i]['images']),
                      radius: 30,
                    ),
                    title: Text(
                      listCart[i]['name'].toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        listCart[i]['qty'].toString() + "+",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300])),
                    ));
              },
            )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Metode Pembayaran",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Tunai",
                      style: TextStyle(fontSize: 20, color: Colors.purple)),
                  Text("Rp 200.000", style: TextStyle(fontSize: 20)),
                  Text("|",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  Text("Tambahin Promo",
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Pesanan",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Text("Rp 200.000",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Ongkos Kirim",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                Text("Gratis",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("Rp 200.000",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: RaisedButton(
                color: Colors.purple,
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: Text("Pesan Sekarang >",
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {}),
            )
          ],
        ),
      ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
      ),
    );
  }
}
