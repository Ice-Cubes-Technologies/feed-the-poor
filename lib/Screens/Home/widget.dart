import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Card(
                elevation: 10,
                child: InkWell(
                  splashColor: Theme.of(context).accentColor.withAlpha(12),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        gradient: new LinearGradient(
                            colors: [
                              Colors.pink,
                              Colors.white,
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(2.0, 0.0),
                            stops: [0.0, 2.0],
                            tileMode: TileMode.clamp),
                      ),
                      child: ListTile(
                        title: Text(
                          'NGO',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Thaagam Foundations',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: Text(
                "Overview",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Latest Donors",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 175,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Image.asset('assets/logo/logo.png'),
                          height: 100,
                        ),
                        Text("Leonard"),
                        Chip(
                          label: Text(
                            'Rs. 200',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          backgroundColor: Theme.of(context).accentColor,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          labelPadding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    endIndent: 50,
                    indent: 50,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Image.asset('assets/logo/logo.png'),
                          height: 100,
                        ),
                        Text("Ananth"),
                        Chip(
                          label: Text(
                            'Rs. 200',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          backgroundColor: Theme.of(context).accentColor,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          labelPadding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    endIndent: 50,
                    indent: 50,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Chip(
                          label: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).accentColor,
                          ),
                          backgroundColor: Theme.of(context).backgroundColor,
                          elevation: 2,
                          padding: EdgeInsets.symmetric(vertical: 5),
                        ),
                        Chip(
                          label: Text(
                            'View More',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          backgroundColor: Theme.of(context).accentColor,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          labelPadding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Photos left",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Photos left",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
