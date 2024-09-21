import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../ProductTitle.dart';
import '../product.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShopStore extends StatefulWidget {
  const ShopStore({Key? key}) : super(key: key);

  @override
  _ShopStoreState createState() => _ShopStoreState();
}

//$$$$$$$$$$$$$$$$$$$$$$$$$
//** LinkedIn :
//  ** Dali Belkouri
// ----------------
//** Github :
//  ** todoyalee
// ----------------
//** Youtube :
//  ** DalyCode
//$$$$$$$$$$$$$$$$$$$$$$$$$

class _ShopStoreState extends State<ShopStore> {
  List<Product> listOfProduct = [
    Product(
      name: "Naruto Manga",
      price: "800.0",
      image: "images/naruto.jpg",
    ),
    Product(
      name: "Bleach Manga",
      price: "700.0",
      image: "images/R.jpg",
    ),
    Product(
      name: "Owari No Seraph Manga",
      price: "743.0",
      image: "images/ONS.jpg",
    ),
    Product(
      name: "Full Metal Alchemist Manga",
      price: "1000.0",
      image: "images/FMA.jpg",
    ),
    Product(
      name: "Fairy Tale Manga",
      price: "650.0",
      image: "images/fairyTale.png",
    ),
    Product(
      name: "Demon Slayer Manga",
      price: "920.0",
      image: "images/demonSlayer.jpg",
    ),
    Product(
      name: "Hajime No Ippo Manga",
      price: "800.0",
      image: "images/volg.jpg",
    ),
    Product(
      name: "Norogami Manga",
      price: "700.0",
      image: "images/norogami.jpg",
    ),
    Product(
      name: "No Game No Life Manga",
      price: "743.0",
      image: "images/ngnl.webp",
    ),
    Product(
      name: "Jujutsu Kaissen Manga",
      price: "1000.0",
      image: "images/jjk.jpg",
    ),
    Product(
      name: "Hunter X Hunter Manga",
      price: "650.0",
      image: "images/hxh.jpg",
    ),
    Product(
      name: "Dragon Ball Manga",
      price: "920.0",
      image: "images/dbz.jpg",
    ),
    Product(
      name: "Code Geass Manga",
      price: "800.0",
      image: "images/CG.jpg",
    ),
    Product(
      name: "Soul Eater Manga",
      price: "700.0",
      image: "images/SE.jpg",
    ),
    Product(
      name: "Monster Manga",
      price: "743.0",
      image: "images/monster.jpg",
    ),
    Product(
      name: "Death Note Manga",
      price: "1000.0",
      image: "images/DN.jpg",
    ),
    Product(
      name: "Cowboy Bebop' Manga",
      price: "650.0",
      image: "images/cowboy.jpg",
    ),
    Product(
      name: "Akama Ga Kill Manga",
      price: "920.0",
      image: "images/AGK.jpg",
    ),
    Product(
      name: "Summer Wars Manga",
      price: "800.0",
      image: "images/SummerWars.jpg",
    ),
    Product(
      name: " Ouran High School Host Club Manga ",
      price: "700.0",
      image: "images/HighSchoolHostClub.jpg",
    ),
    Product(
      name: "Welcome to the NHK Manga",
      price: "743.0",
      image: "images/WelcometotheNHK.jpg",
    ),
    Product(
      name: "Samurai Champloo Manga",
      price: "1000.0",
      image: "images/SamuraiChamploo.jpg",
    ),
    Product(
      name: "The Melancholy of Haruhi Suzumiya Manga",
      price: "650.0",
      image: "images/TheMelancholyofHaruhiSuzumiya.jpg",
    ),
    Product(
      name: "Bakemonogatari Manga",
      price: "920.0",
      image: "images/Bakemonogatari.jpg",
    ),
  ];

  List<ProductTitle> listOFTitleProducr = [
    ProductTitle(discount: "34% ", image: 'images/jjk.jpg'),
    ProductTitle(discount: "12% ", image: 'images/HellGirl.jpg'),
    ProductTitle(discount: "25% ", image: 'images/R.jpg'),
    ProductTitle(discount: "32% ", image: 'images/FMA.jpg'),
    ProductTitle(discount: "34% ", image: 'images/Baccano!.jpg'),
    ProductTitle(discount: "12% ", image: 'images/demonSlayer.jpg'),
    ProductTitle(discount: "25% ", image: 'images/monster.jpg'),
    ProductTitle(discount: "32% ", image: 'images/onePiece.jpg'),
    ProductTitle(discount: "34% ", image: 'images/SummerWars.jpg'),
    ProductTitle(discount: "12% ", image: 'images/WelcometotheNHK.jpg'),
    ProductTitle(discount: "25% ", image: 'images/ONS.jpg'),
    ProductTitle(discount: "32% ", image: 'images/HellGirl.jpg'),
    ProductTitle(discount: "34% ", image: 'images/DN.jpg'),
    ProductTitle(discount: "10% ", image: 'images/dbz.jpg'),
    ProductTitle(discount: "25% ", image: 'images/AGK.jpg'),
    ProductTitle(discount: "32% ", image: 'images/cowboy.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              //HexColor("#5a3bf2"),
              //HexColor("#4530b3"),
              Colors.lightBlue,
              Colors.white,
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
          ),
          child: Column(
            children: [
              TweenAnimationBuilder(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: HexColor("#4530b0"),
                    color: Colors.lightBlue,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 10),
                        blurRadius: 40,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.arrow_back,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      TweenAnimationBuilder(
                        child: Image(
                          image: AssetImage("images/manga-icon-0.jpg"),
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(milliseconds: 1000),
                        builder: (BuildContext context, double _value, child) {
                          return Opacity(
                            opacity: _value,
                            child: Padding(
                              padding: EdgeInsets.only(top: _value * 3),
                              child: child,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.add_shopping_cart,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 500),
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 5),
                      child: child,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView.separated(
                  separatorBuilder: (context, _) => SizedBox(
                    width: 15,
                  ),
                  itemCount: listOFTitleProducr.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => TweenAnimationBuilder(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: HexColor("#5451d6")
                          color: Colors.lightBlue),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  listOFTitleProducr[index].image,
                                  height: 90,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  """🔥${listOFTitleProducr[index].discount}
     Discount""",
                                  style: TextStyle(
                                      color: HexColor("#FFFFFE"),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 2000),
                    builder: (BuildContext context, double _value, child) {
                      return Opacity(
                        opacity: _value,
                        child: Padding(
                          padding: EdgeInsets.only(top: _value * 3),
                          child: child,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 350,
                child: TweenAnimationBuilder(
                  child: Row(
                    children: [
                      Text(
                        " More Details",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "SecularOne-Regular",
                          //color: HexColor("#FFFFFE")
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: () => setState(
                          () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (ShopStore())),
                            );
                          },
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            //color: HexColor("#1DBEF5"),
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(5, 10),
                                blurRadius: 40,
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.bookmarks,
                            color: HexColor("#FFFFFE"),
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.easeInOutQuart,
                  builder: (BuildContext context, double _value, child) {
                    return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 3),
                        child: child,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 3,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 1500),
                    builder: (BuildContext context, double _value, child) {
                      return Opacity(
                        opacity: _value,
                        child: Padding(
                          padding: EdgeInsets.only(top: _value * 3),
                          child: child,
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        itemCount: listOfProduct.length,
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.fit(2),
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          height: 200,
                          margin: EdgeInsets.only(top: index == 1 ? 30 : 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: HexColor("#5451d6")
                              color: Colors.lightBlue),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      listOfProduct[index].image,
                                      height: 90,
                                      fit: BoxFit.fill,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listOfProduct[index].name,
                                      style: TextStyle(
                                          color: HexColor("#FFFFFE"),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "\$ " + listOfProduct[index].price,
                                      style: TextStyle(
                                          color: HexColor("#FFFFFE"),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
