import 'package:app_videos/config/infrastructure/models/local_video_model.dart';
import 'package:app_videos/domain/datasource/video_post_datasource.dart';
import 'package:app_videos/domain/entities/video_post.dart';
import 'package:app_videos/shared/data/local_video_posts.dart';

class LocalVideodataSource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
