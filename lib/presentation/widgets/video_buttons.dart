import 'package:app_videos/config/helpers/num_formats.dart';
import 'package:app_videos/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       _IconButtonVideo(color:Colors.red, icon: Icons.favorite, value: video.likes,),
       _IconButtonVideo( icon: Icons.remove_red_eye_outlined, value: video.likes,)
        
      ],
    );
  }
}

class _IconButtonVideo extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color? color;
  const _IconButtonVideo({required this.value, required this.icon, color}):color = color ??Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         IconButton(
          color: color,
          onPressed: (){}, 
          icon: Icon(icon, size: 30,)),
         Text(NumFormats.readbleNumber(value.toDouble()))
      ],
    );
  }
}