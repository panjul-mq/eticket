part of 'pages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/menu.svg"),
                IconButton(icon: Icon(Icons.search), onPressed: (){})
              ],
            ),
            SizedBox(height: 20,),
            Text("Hai mamank",style: TextStyle(fontSize: 20),),
            Text("Masih Lapar?",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                images: [
                  NetworkImage('https://lelogama.go-jek.com/post_thumbnail/GoPay-x-LebiHepi-Gofood_BlogBanner_1.jpg'),
                  NetworkImage('https://lelogama.go-jek.com/post_featured_image/lebihepi_.jpg'),
                  NetworkImage('https://pbs.twimg.com/media/EQdmVNhUYAUvzwu.jpg'),
                ],
                borderRadius: true,
                dotBgColor: Colors.transparent,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Kategori", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                Text("Lebih Lengkap", style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Semua", style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Image.asset("assets/img/pizza.png", height: 30,),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Image.asset("assets/img/hamburger.png", height: 30,),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Image.asset("assets/img/kebab.png", height: 30,),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Image.asset("assets/img/noodles.png", height: 30,),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Image.asset("assets/img/soft-drink.png", height: 30,),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Rekomendasi buat kamyu",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20,),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,  
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemCount: listProduct.length, 
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: index.isEven ? 200 : 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(listProduct[index]['images']),
                              fit: BoxFit.fill
                            )
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white
                                ),
                                child: Text(listProduct[index]['time']),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(listProduct[index]['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Text(listProduct[index]['rating'].toString(), style: TextStyle(fontSize: 20),)
                              ],
                            ),
                            Text(listProduct[index]['price'].toString(), style: TextStyle(fontSize: 20),)
                          ],
                        )
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: "Home",
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
