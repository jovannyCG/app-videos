

import 'package:app_videos/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier{
  
  bool initialLoading = true;
  List<VideoPost> video =[];


Future<void> loadNextPage() async{

  notifyListeners();
}
}