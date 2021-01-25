// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:quiver/iterables.dart';

class PostsApi {
  const PostsApi({@required FirebaseFirestore firestore, @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<Post> createPost(PostInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('posts').doc();

    final List<String> images = await _uploadImages(ref.id, info.paths);
    final Post post = Post((PostBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..images = ListBuilder<String>(images)
        ..tags = ListBuilder<String>(info.tags)
        ..description = info.description
        ..users = ListBuilder<String>(info.users.map<String>((AppUser user) => user.uid))
        ..lng = info.lng
        ..lat = info.lat;
    });

    await ref.set(post.json);
    return post;
  }

  Future<List<String>> _uploadImages(String id, BuiltList<String> paths) async {
    final List<String> images = <String>[];
    for (String path in paths) {
      final DocumentReference ref = _firestore.collection('NOT_USED').doc();
      final Reference storageRef = _storage.ref('posts/$id/${ref.id}');
      await storageRef.putFile(File(path));

      final String url = await storageRef.getDownloadURL();
      images.add(url);
    }

    return images;
  }

  Future<List<Post>> listenForPosts(List<String> following) async {
    final List<Post> newResult = <Post>[];
    final List<List<String>> parts = partition(following, 10).toList();
    for (List<String> following in parts) {
      final QuerySnapshot snapshot = await _firestore
          .collection('posts') //
          .where('uid', whereIn: following)
          .get();

      final List<Post> result = snapshot.docs //
          .map((QueryDocumentSnapshot doc) => Post.fromJson(doc.data()))
          .toList();

      newResult.addAll(result);
    }

    return newResult;
  }
}
