import 'package:flutter/material.dart';

class PictureUploadList extends StatefulWidget {
  @override
  _PictureUploadListState createState() => _PictureUploadListState();
}

class _PictureUploadListState extends State<PictureUploadList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            trailing: Icon(Icons.search),
            title: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search',
              ),
              cursorColor: Theme.of(context).accentColor,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            margin: EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/logo/logo.png'),
                  ),
                  title: Text("Leonard test Selvaraja"),
                  subtitle: Text("Donation - Rs. 200\nPictures - 2"),
                  trailing: Icon(Icons.chevron_right),
                  dense: true,
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
