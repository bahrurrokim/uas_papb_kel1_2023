import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Ujian Akhir Semester PAPB (Semester 6)',
      home: MyHomePage(),
    );
  }
}

// IMAGES
var meatImage =
    'https://i.ibb.co/s1RpfXD/pecel.jpg';
var foodImage =
    'https://i.ibb.co/s1RpfXD/pecel.jpg';

var pecel1Image =
    'https://i.ibb.co/Smfw2R0/pecel2.jpg';
var pecel2Image =
    'https://i.ibb.co/Smfw2R0/pecel2.jpg';

// COLORS
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppbar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            FoodListview(),
            SizedBox(height: 16.0),
            SelectTypeSection(),
            SizedBox(height: 16.0),
            MenuItemsList()
          ],
        ),
      ),
    );
  }
}

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
             
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Keranjang', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: FlutterClipPolygon(
        sides: 6,
        child: Container(
          color: iconYellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Menu Pilihan',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              pecel1Image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: iconYellow,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text('4.5')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Pecel Sambel Tumpang',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 92.0,
                width: 120.0,
                color: Colors.lightGreen[700],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.bowlRice,
                      color: Colors.green[300],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Menu Special',
                      style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 92.0,
              width: 120.0,
              color: Colors.red[600],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: Colors.red[400],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Menu Terlaris',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: Colors.blue[700],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mugHot,
                    color: Colors.blue[200],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Minuman',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodListview extends StatelessWidget {
  const FoodListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(meatImage), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Promo 20%',
                      style: TextStyle(
                          color: textYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      'Untuk 10 Pembeli Pertama',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}