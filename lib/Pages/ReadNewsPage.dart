import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_assesment/Pages/TaskPage.dart';

class Readnewspage extends StatefulWidget {
  const Readnewspage({super.key});

  @override
  _ReadnewspageState createState() => _ReadnewspageState();
}

class _ReadnewspageState extends State<Readnewspage> {
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarwidget('Read News'),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 20, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Card with Background Image
            Container(
              width: 358,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    'assests/Image/news.png',
                  ), // Add your image here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 25),

            // Title
            Text(
              "Rules of Task",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),

            // Bullet Points
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ruleBullet("Keep scrolling for 10 minutes.", 1),
                ruleBullet("Keep clicking every 30 seconds.", 2),
                ruleBullet(
                  "Don't leave still screen for more than 30 seconds.",
                  3,
                ),
              ],
            ),
            SizedBox(height: 30),

            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 6,
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TaskPage()),
                  );
                },
                child: Text(
                  "Start Task",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoMono',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
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

  Widget ruleBullet(String text, int i) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$i. ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16))),
        ],
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
}
