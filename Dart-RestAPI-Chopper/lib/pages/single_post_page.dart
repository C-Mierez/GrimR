import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_bloc.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_event.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_state.dart';
import 'package:dart_rest_api_chopper/model/built_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:built_collection/built_collection.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({
    Key key,
    this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PostApiBloc>(context).add(PostApiEvent.getPost(id: postId));
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Post Page'),
      ),
      body: BlocBuilder<PostApiBloc, PostApiState>(
        builder: (BuildContext context, state) {
          return state.singlePostResponse.fold(
              () => Center(
                    child: CircularProgressIndicator(),
                  ), (response) {
            final post = response.body;
            return _buildPost(post);
          });
        },
      ),
    );
  }

  Padding _buildPost(BuiltPost post) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            post.title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(post.body),
        ],
      ),
    );
  }
}
