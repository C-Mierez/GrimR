import 'dart:convert';
import 'package:dart_rest_api_chopper/bloc/postapi_bloc.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_rest_api_chopper/bloc/postapi_state.dart';
import 'package:dart_rest_api_chopper/model/built_post.dart';
import 'package:dart_rest_api_chopper/pages/single_post_page.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _postPosts() {
      // The JSONPlaceholder API always responds with whatever was passed in the POST request
      final newPost = BuiltPost(
        (b) => b
          ..title = 'New Title'
          ..body = 'New Body',
      );
      BlocProvider.of<PostApiBloc>(context)
          .add(PostApiEvent.postPosts(body: newPost));
    }

    return BlocConsumer<PostApiBloc, PostApiState>(
      listener: (context, state) => state.postPostResponse.fold(
        () => null,
        (response) {
          FlushbarHelper.createInformation(
            message: response.bodyString,
          ).show(context);
        },
      ),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text('Blog with Chopper'),
        ),
        body: state.isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : state.postsResponse.fold(
                () => Center(
                  child: Text('Response is null.'),
                ),
                (response) {
                  final posts = response.body;
                  return _buildPosts(context, posts);
                },
              ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: state.isLoading ? null : _postPosts,
        ),
      ),
    );
  }
/*
  Widget _buildBody(BuildContext context, PostApiState state) {
    return 
  }*/

  ListView _buildPosts(BuildContext context, BuiltList<BuiltPost> posts) {
    return ListView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(
              posts[index].title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(posts[index].body),
            onTap: () => _navigateToPost(context, posts[index].id),
          ),
        );
      },
    );
  }

  void _navigateToPost(BuildContext context, int id) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SinglePostPage(postId: id),
      ),
    );
  }
}
