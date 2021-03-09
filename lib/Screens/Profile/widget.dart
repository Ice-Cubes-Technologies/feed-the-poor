import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/logo/logo.png',
              ),
              title: Text("Leonard Selvaraja"),
              subtitle: Text("User ID - FTP11012401"),
              trailing: Icon(
                Icons.edit,
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: new BoxDecoration(
                  border: new Border.symmetric(horizontal: BorderSide(color: Colors.grey.withAlpha(20)))),
              child: ListTile(
                title: Text("NGO"),
                subtitle: Text("Thaagam Foundations"),
                trailing: Icon(
                  Icons.edit,
                  color: Theme.of(context).accentColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
