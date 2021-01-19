// File created by
// Lung Razvan <long1eu>
// on 18/01/2021

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone_gad/src/actions/posts/index.dart';
import 'package:instagram_clone_gad/src/containers/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/presentation/routes.dart';
import 'package:location/location.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostInfoContainer(
      builder: (BuildContext context, PostInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('New post'),
            actions: <Widget>[
              FlatButton(
                child: const Text('Share'),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const CreatePost());
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: <Widget>[
                        Image.file(
                          File(info.paths.first),
                          width: 72.0,
                          height: 72.0,
                          fit: BoxFit.cover,
                        ),
                        if (info.paths.length > 1)
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.photo_library_sharp,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Write a caption...',
                          border: InputBorder.none,
                        ),
                        maxLines: 3,
                        keyboardType: TextInputType.text,
                        onChanged: (String value) {
                          StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(description: value));
                        },
                      ),
                    ),
                  ],
                ),
                const Divider(),
                ListTile(
                  title: const Text('Tag people'),
                  trailing: const Icon(Icons.person),
                  onTap: () async {
                    final dynamic user = await Navigator.pushNamed(context, AppRoutes.searchUsers);

                    if (user != null && !info.users.contains(user)) {
                      StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addUser: user));
                    }
                  },
                ),
                Wrap(
                  children: info.users.map((AppUser user) {
                    return Chip(
                      label: Text(user.username),
                      onDeleted: () {
                        StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(removeUser: user));
                      },
                    );
                  }).toList(),
                ),
                const Divider(),
                ListTile(
                  title: const Text('Add location'),
                  subtitle: info.lat != null ? Text('${info.lat}/${info.lng}') : null,
                  trailing: const Icon(Icons.location_on),
                  onTap: () async {
                    final Location location = Location();

                    PermissionStatus permissionResult = await location.hasPermission();
                    if (permissionResult != PermissionStatus.granted &&
                        permissionResult != PermissionStatus.grantedLimited) {
                      permissionResult = await location.requestPermission();
                    }

                    if (permissionResult != PermissionStatus.granted &&
                        permissionResult != PermissionStatus.grantedLimited) {
                      return;
                    }

                    final LocationData result = await location.getLocation();
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdatePostInfo(lat: result.latitude, lng: result.longitude));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
