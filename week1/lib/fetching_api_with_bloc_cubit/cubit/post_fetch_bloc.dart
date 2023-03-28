
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week1/fetching_api_with_bloc_cubit/cubit/post_fetch_state.dart';
import '../models/models.dart';
import '../repository/api_repository.dart';

class PostFetchBloc extends Cubit<PostFetchState>{
  final ApiRepository apiRepository;
  PostFetchBloc({required this.apiRepository}) : super(PostFetchInitial());

  Future<void>fetchPostsApi() async{
    emit(PostFetchLoading());
    try{
      final List<Post>? postlist = await apiRepository.getPostList();
      emit(PostFetchLoaded(postList: postlist ?? [] ));
    }on Failure catch (err) {
      emit(PostFetchPostError(failure: err));
    }
    catch (err){
      print(err);
    }
  }
}