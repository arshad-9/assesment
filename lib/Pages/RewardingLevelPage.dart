import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RewardingLevelPage extends StatefulWidget {
  const RewardingLevelPage({super.key});

  @override
  _RewardingLevelPageState createState() => _RewardingLevelPageState();
}

class _RewardingLevelPageState extends State<RewardingLevelPage> {
  int selected_index = 0;
  int Earning = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: appbarwidget("Rewarding Levels"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 343,
                  height: 172,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Level 01",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 343,
                    height: 137,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Minimum Withdrawal = \$50",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),

                        Text(
                          "your Earning = \$$Earning",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoMono',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30),

                        LinearProgressIndicator(
                          value: getEarningPercentage(50, Earning),
                          backgroundColor: Colors.grey[300],
                          color: Colors.orange,
                          minHeight: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 343,
                  height: 172,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Level 02",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 343,
                    height: 137,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Minimum Withdrawal = \$100",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),

                        Text(
                          "your Earning = \$0",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoMono',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30),

                        LinearProgressIndicator(
                          value: getEarningPercentage(50, 0),
                          backgroundColor: Colors.grey[300],
                          color: Colors.orange,
                          minHeight: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 343,
                  height: 172,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Level 03",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 343,
                    height: 137,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Minimum Withdrawal = \$100",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'RobotoMono',
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),

                        Text(
                          "your Earning = \$0",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoMono',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30),

                        LinearProgressIndicator(
                          value: getEarningPercentage(50, 0),
                          backgroundColor: Colors.grey[300],
                          color: Colors.orange,
                          minHeight: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
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
              if (index == 0) {
                Navigator.pop(context);
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

  AppBar appbarwidget(String title) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.orange,
        statusBarIconBrightness: Brightness.light,
      ),
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              iconSize: 40,
              icon: Icon(Icons.arrow_back_ios, color: Colors.orange),
              onPressed: () => Navigator.pop(context),
            ),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      centerTitle: true,
    );
  }

  double getEarningPercentage(int target, int earn) {
    return (earn / target);
  }
}
