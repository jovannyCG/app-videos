import 'package:app_videos/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'no name',
        videUrl: json['videUrl'] ?? 'no video caption',
        likes: json['likes']?? 0,
        views: json['views']?? 0,
      );

      VideoPost toVideoPostEntity ()=> VideoPost(
        caption: name, 
        videoUrl: videUrl,
        likes: likes,
        views: views

      );
}
