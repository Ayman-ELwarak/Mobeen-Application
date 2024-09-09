import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';

class Soft_palate_list {
  static List<String> Soft_palate_title = [
    'Soft palate elevation swallow',
    'Soft palate elevation yawn',

  ];
  static List<Video> Soft_palate_video = [
    Video(
        title:  'Soft palate elevation swallow',
        assetPath: 'assest/Videos/exercises/soft_palate/soft_palate_elevation_swallow.mp4'
    ),
    Video(
        title: 'Soft palate elevation yawn',
        assetPath: 'assest/Videos/exercises/soft_palate/soft_palate_elevation_yawn.mp4'
    )

  ];
}