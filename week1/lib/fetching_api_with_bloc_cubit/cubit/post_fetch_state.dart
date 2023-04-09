import 'package:equatable/equatable.dart';

import '../models/models.dart';


abstract class PostFetchState extends Equatable{
  const PostFetchState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PostFetchInitial extends PostFetchState{}
class PostFetchLoading extends PostFetchState{}
class PostFetchLoaded extends PostFetchState{
  final List<Post> postList;

  PostFetchLoaded({required this.postList});

  @override
  List<Object> get props => [postList];
}
class PostFetchPostError extends PostFetchState{
  final Failure failure;

  const PostFetchPostError({required this.failure});
  @override
  // TODO: implement props
  List<Object?> get props => [];
}