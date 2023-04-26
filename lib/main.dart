import 'package:app_videos/config/infrastructure/datasources/local_video_post_datasource._impl.dart';
import 'package:app_videos/config/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:app_videos/config/theme/app_theme.dart';
import 'package:app_videos/presentation/providers/discover_provider.dart';
import 'package:app_videos/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(
      videoDatasource: LocalVideodataSource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider(videosRepository:videoPostRepository)..loadNextPage())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'Videos App',
        home: const DiscoverScreen()
      ),
    );
  }
}
