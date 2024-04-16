import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreenState extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenState> {
  int _selectedIndex = 1;

  List<bool> _liked = [false, false, false];

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      _buildPage1(),
      _buildCarousel(context),
      _buildPage3(),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Text('Following', style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
            const VerticalDivider(color: Colors.white),
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Text('For You', style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color(0xFF111111),
      ),
      body: widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Icon(Icons.bookmark, color: _selectedIndex == 0 ? Color(0xFF8731E4) : Colors.white),
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: _selectedIndex == 1 ? Image.asset('assets/images/icono_central.png', width: 37, height: 37, fit: BoxFit.cover) : Image.asset('assets/images/icono_central_blanco.png', width: 35, height: 35, fit: BoxFit.cover),
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Icon(Icons.edit, color: _selectedIndex == 2 ? Color(0xFF8731E4) : Colors.white),
            ),
            label: ' ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedFontSize: 0,
        unselectedFontSize: 0,
        backgroundColor: Color(0xFF0B0B0B),
      ),
    );
  }

  Widget _buildPage1() {
    return Center(
      child: Text(
        'Página 1',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildPage3() {
    return Center(
      child: Text(
        'Página 3',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildCarousel(BuildContext context) {
    List<String> imgList = [
      'assets/images/image1.jpg',
      'assets/images/image2.jpg',
      'assets/images/image3.jpg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        enlargeCenterPage: false,
        autoPlay: false,
        viewportFraction: 1.0,
        scrollDirection: Axis.vertical,
      ),
      items: imgList.asMap().entries.map((entry) {
        int index = entry.key;
        String item = entry.value;
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(item, fit: BoxFit.cover, height: double.infinity),
                _buildDynamicButtons(context, index),
              ],
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildDynamicButtons(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.supervised_user_circle, color: Colors.white, size: 50),
            backgroundColor: Colors.transparent,
            onPressed: () {
              // Action for 'share'.
            },
            elevation: 0,
          ),
          SizedBox(height: 25),
          FloatingActionButton(
            child: Icon(Icons.favorite, color: _liked[index] ? Colors.purple : Colors.white, size: 35),
            backgroundColor: Colors.transparent,
            onPressed: () {
              setState(() {
                _liked[index] = !_liked[index];
              });
            },
            elevation: 0,
          ),
          SizedBox(height: 25),
          FloatingActionButton(
            child: Icon(Icons.shopping_cart, color: Colors.white, size: 35),
            backgroundColor: Colors.transparent,
            onPressed: () {
              // Action for 'share'.
            },
            elevation: 0,
          ),
          SizedBox(height: 25),
          FloatingActionButton(
            child: Icon(Icons.ios_share, color: Colors.white, size: 35),
            backgroundColor: Colors.transparent,
            onPressed: () {
              // Action for 'buy'.
            },
            elevation: 0,
          ),
        ],
      ),
    );
  }
}