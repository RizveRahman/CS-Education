class Post {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  bool isBookMark;
  bool isLiked;

  Post({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    this.isBookMark = false,
    this.isLiked = false,
  });
}