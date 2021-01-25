// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/actions/posts/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/presentation/feed/feed_page.dart';
import 'package:instagram_clone_gad/src/presentation/routes.dart';
import 'package:instagram_clone_gad/src/presentation/widgets/search_users_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const FeedPage(),
        const SearchUsersPage(showFollow: true),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
        Container(
          color: Colors.orange,
          child: Center(
            child: IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const SignOut());
              },
            ),
          ),
        ),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        onTap: (int i) async {
          if (i == 2) {
            final PickedFile file = await ImagePicker().getImage(source: ImageSource.gallery);
            if (file != null) {
              StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addImage: file.path));
              Navigator.pushNamed(context, AppRoutes.createPost);
            }
          } else {
            setState(() => _page = i);
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
        ],
      ),
    );
  }
}
