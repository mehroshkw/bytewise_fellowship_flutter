import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week1/fetching_api_with_bloc_cubit/cubit/post_fetch_bloc.dart';
import 'fetching_api_with_bloc_cubit/repository/api_repository.dart';
import 'fetching_api_with_bloc_cubit/service/api_service.dart';
import 'fetching_api_with_bloc_cubit/views/home_screen.dart';


void main() {
  runApp( MyApp(apiService: ApiService(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.apiService});
  final ApiService apiService;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostFetchBloc>(create: (context) =>
        PostFetchBloc(
            apiRepository: ApiRepository( apiService: apiService)
        )..fetchPostsApi(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  HomeScreen(),
      ),
    );
  }
}
