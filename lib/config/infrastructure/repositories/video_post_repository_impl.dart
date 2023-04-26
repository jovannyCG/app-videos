import 'package:app_videos/domain/datasource/video_post_datasource.dart';
import 'package:app_videos/domain/entities/video_post.dart';
import 'package:app_videos/domain/repositories/video_post_repository.dart';

class VideoPostsRepository implements VideoPostRepository{
  final VideoPostDatasource videoDatasource;

  VideoPostsRepository({required this.videoDatasource});
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(int page) {
   
   return videoDatasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(String userID) {
    
    throw UnimplementedError();
  }


}