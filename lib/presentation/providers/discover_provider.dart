

import 'package:app_videos/config/infrastructure/models/local_video_model.dart';
import 'package:app_videos/domain/entities/video_post.dart';
import 'package:app_videos/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier{
  
  bool initialLoading = true;
  List<VideoPost> videos =[];


Future<void> loadNextPage() async{
await Future.delayed(const Duration(seconds: 2));

final List<VideoPost> newVideos = videoPosts.map(
  (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

  videos.addAll(newVideos);
  initialLoading = false;
  notifyListeners();
}
}