import 'package:feed_the_poor/Screens/Home/widget.dart';
import 'package:feed_the_poor/Screens/PictureUploadList/widget.dart';
import 'package:feed_the_poor/Screens/Profile/widget.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> pages = [Home(), PictureUploadList(), Profile()];
  int? pageIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(text: '#', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: 'feed', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: 'The', style: TextStyle(color: Colors.black)),
                TextSpan(text: 'Poor', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIndex!, // Use this to update the Bar giving a position
            onTap: (index) {
              setState(() {
                print(index);
                pageIndex = index;
              });
            },
            selectedIconTheme: IconThemeData(color: Theme.of(context).accentColor),
            selectedItemColor: Theme.of(context).accentColor,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Upload', icon: Icon(Icons.cloud_upload)),
              BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
            ]),
        body: pages[pageIndex!],
      ),
    );
  }
}
