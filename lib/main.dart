import 'package:app_videos/config/theme/app-theme.dart';
import 'package:app_videos/presentation/providers/discover_provider.dart';
import 'package:app_videos/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider())
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
