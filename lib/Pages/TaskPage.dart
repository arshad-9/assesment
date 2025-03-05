import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int selected_index = 0;
  // late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // controller = WebViewController();
    // controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    // controller.loadRequest(Uri.parse('https://flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: WebViewWidget(controller: controller),
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
}
