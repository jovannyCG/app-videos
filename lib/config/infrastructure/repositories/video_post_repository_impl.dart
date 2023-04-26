import 'package:app_videos/domain/datasource/video_post_datasource.dart';
import 'package:app_videos/domain/entities/video_post.dart';
import 'package:app_videos/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{
  final VideoPostDatasource videoDatasource;

  VideoPostsRepositoryImpl({required this.videoDatasource});
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }
  
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
  return videoDatasource.getTrendingVideosByPage(page);
    
  }

}

