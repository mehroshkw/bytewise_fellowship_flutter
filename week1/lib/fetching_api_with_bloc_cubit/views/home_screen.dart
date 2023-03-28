import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week1/fetching_api_with_bloc_cubit/cubit/post_fetch_bloc.dart';
import 'package:week1/fetching_api_with_bloc_cubit/cubit/post_fetch_state.dart';

import '../models/models.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Fetching Using Cubit"),
      ),
      body:BlocBuilder<PostFetchBloc,PostFetchState>(
          builder: (context,state){
            if(state is PostFetchLoading){
              return const Center(child:  CircularProgressIndicator(),);
            }else if(state is PostFetchPostError){
              return Text(state.failure.msg);
            }else if (state is PostFetchLoaded){
              final postList = state.postList;
              return postList.isEmpty ? const Text("Posts Not Available")
                  :ListView.builder(
                  itemCount: postList.length,
                  itemBuilder: (context, index){
                    final Post singlePost = postList[index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(10),
                        title: Text(singlePost.title),
                        subtitle: Text(singlePost.body),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                color: Colors.blue,
                                width: 0.5
                            )
                        ),
                      ),
                    );

                  }
              );
            }else {
              return const Text("An Error Occured");
            }
            // return const SizedBox.shrink()
          }
      ),
    );
  }
}