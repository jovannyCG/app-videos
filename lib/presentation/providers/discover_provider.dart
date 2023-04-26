

import 'package:app_videos/config/infrastructure/models/local_video_model.dart';
import 'package:app_videos/domain/entities/video_post.dart';
import 'package:app_videos/domain/repositories/video_post_repository.dart';
import 'package:app_videos/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier{
  final VideoPostRepository videosRepository;
  
  bool initialLoading = true;
  List<VideoPost> videos =[];

  DiscoverProvider({required this.videosRepository});


Future<void> loadNextPage() async{
//await Future.delayed(const Duration(seconds: 2));

//final List<VideoPost> newVideos = videoPosts.map(
 // (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

final newVideos = await videosRepository.getTrendingVideosByPage(1);
  videos.addAll(newVideos);
  initialLoading = false;
  notifyListeners();
}
}