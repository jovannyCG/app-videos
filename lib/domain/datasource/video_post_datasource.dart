import 'package:app_videos/domain/entities/video_post.dart';

abstract class VideoPostDatasource{
  Future<List<VideoPost>> getTrendingVideosByPage(String userID);
   Future<List<VideoPost>> getFavoriteVideosByUser(int page);

}