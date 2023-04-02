import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetching_api_with_bloc_cubit/repository/api_repository.dart';
import 'fetching_api_with_bloc_cubit/service/api_service.dart';
import 'fetching_api_with_bloc_cubit/views/home_screen.dart';
import 'package:week1/fetching_api_with_bloc_cubit/cubit/post_fetch_bloc.dart';
//for provider
import 'package:provider/provider.dart';
import 'package:week1/provider_prectice/providers/fav_provider.dart';
import 'package:week1/provider_prectice/providers/loginprovider.dart';
import 'package:week1/provider_prectice/views/login.dart';


//for Bloc
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

//for provider we will run this class
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (_) => FavProvider()),
//           ChangeNotifierProvider(create: (_) => LoginProvider()),
//         ],
//         child: Builder(
//           builder: (BuildContext context) {
//             return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               theme: ThemeData(
//                   brightness: Brightness.light,
//                   primarySwatch: Colors.blue
//               ),
//               darkTheme: ThemeData(
//                   brightness: Brightness.dark,
//                   primarySwatch: Colors.blue
//                 // primarySwatch: Colors.blue,
//               ),
//               home:  Login(),
//             );
//           },
//         ));
//   }
// }

