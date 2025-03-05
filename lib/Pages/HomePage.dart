import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_assesment/Pages/ReadNewsPage.dart';
import 'package:new_assesment/Pages/RewardingLevelPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange),

      body: Padding(
        padding: EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                  width: 368,
                  child: Row(
                    children: [
                      Image.asset(
                        'assests/Image/jhon.png',
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        'Jhon Doe',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox.square(dimension: 100),

                      Image.asset(
                        'assests/Image/badge.png',
                        height: 25,
                        width: 25,
                      ),
                      Text(
                        'Level 01',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox.square(dimension: 30),

                      Image.asset(
                        'assests/Image/wallet.png',
                        height: 20,
                        width: 20,
                      ),
                      Text(
                        '\$25.00',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox.square(dimension: 40),
                SizedBox(
                  height: 160,
                  width: 375,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Clain your Daily reward',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 173, 81, 0),
                        ),
                      ),

                      SizedBox.square(dimension: 10),
                      Center(
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 90,

                            autoPlay: true,
                            enlargeCenterPage: true, // Enables scaling effect
                            viewportFraction: 0.25, // Shrinks side cards
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          itemCount: 7,
                          itemBuilder: (context, index, realIndex) {
                            return SizedBox(
                              width: 100,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                    color: Colors.orange,
                                    width: 2,
                                  ),
                                ),
                                color:
                                    _currentIndex == index
                                        ? Colors.white
                                        : Colors.orange,
                                child: Center(
                                  child: Text(
                                    "\$2\n AD",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          _currentIndex == index
                                              ? Colors.orange
                                              : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox.square(dimension: 10),
                Text(
                  'Do Task, Earn Reward',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 173, 81, 0),
                  ),
                ),
                SizedBox.square(dimension: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'You can do these task as many times as you want to',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox.square(dimension: 20.0),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Container(
                        width: 358,
                        height: 185,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assests/Image/game.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          color: const Color.fromARGB(
                            255,
                            203,
                            201,
                            201,
                          ).withOpacity(0.8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Play Game",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Readnewspage()),
                      ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        Container(
                          width: 358,
                          height: 185,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assests/Image/news.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            color: const Color.fromARGB(
                              255,
                              203,
                              201,
                              201,
                            ).withOpacity(0.8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Play Game",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "\$5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        width: 440,
        height: 80,

        color: Colors.orange,

        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: selected_index,
          iconSize: 45,
          onTap: (index) {
            setState(() {
              selected_index = index;
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RewardingLevelPage(),
                  ),
                );
              }
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assests/Image/stack.png',
                height: 45,
                width: 45,
              ),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
