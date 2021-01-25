// File created by
// Lung Razvan <long1eu>
// on 18/01/2021

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone_gad/src/actions/auth/index.dart';
import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/containers/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';

class SearchUsersPage extends StatelessWidget {
  const SearchUsersPage({Key key, this.showFollow = false}) : super(key: key);

  final bool showFollow;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return SearchResultContainer(
          builder: (BuildContext context, List<AppUser> users) {
            return Scaffold(
              appBar: AppBar(
                title: TextField(
                  decoration: const InputDecoration(
                    hintText: 'search',
                  ),
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(SearchUsers(value));
                  },
                ),
              ),
              body: ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final AppUser user = users[index];
                  final bool isFollowed = currentUser.following.contains(user.uid);

                  return ListTile(
                    onTap: () {
                      Navigator.pop(context, user);
                    },
                    leading: user.photoUrl != null ? Image.network(user.photoUrl) : null,
                    title: Text('@${user.username}'),
                    subtitle: Text(user.email),
                    trailing: showFollow
                        ? FlatButton(
                            child: Text(isFollowed ? 'Unfollow' : 'Follow'),
                            onPressed: () {
                              AppAction action;
                              if (isFollowed) {
                                action = UpdateFollowing(remove: user.uid);
                              } else {
                                action = UpdateFollowing(add: user.uid);
                              }

                              StoreProvider.of<AppState>(context).dispatch(action);
                            },
                          )
                        : null,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
