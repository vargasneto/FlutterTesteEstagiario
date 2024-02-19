class Post {
  String title;
  String body;
  List<String>tags;


  Post({
    required this.title,
    required this.body,
    required this.tags,
  });

 factory Post.fromMap(Map<String,dynamic>map)
  {
    return Post(title:map['title'] ,
     body:map['body'],
     tags: List<String>.from((map['tags']as List)), 
    );
  }
}