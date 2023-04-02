class Failure{
  final String msg;
  final String code;

  Failure(
      this.msg,
      this.code
      );
}
class Post{
  final int uid;
  final int id;
  final String title;
  final String body;

  Post({required this.uid, required this.id, required this.body, required this.title});


  factory Post.fromMap(Map<String, dynamic> map){
    return Post(
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
      uid: map['userId'] as int,
    );
  }
}