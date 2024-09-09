import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';

class Jaw_list {
  static List<String> Jaw_title = [
    'Soft palate tongue contact',
    'Open jaw with resistance',
    'Closing jaw against resistance',
    'Jaw side to side',
    'Jaw side to side with resistance',
  ];
  static List<Video> Jaw_video = [
    Video(
        title: 'Soft palate tongue contact',
        assetPath: 'assest/Videos/exercises/jaw/soft_palate_tongue_contact.mp4'
    ),
    Video(
        title: 'Open jaw with resistance',
        assetPath: 'assest/Videos/exercises/jaw/open_jaw_with_resistance.mp4'
    ),
    Video(
        title: 'Closing jaw against resistance',
        assetPath: 'assest/Videos/exercises/jaw/closing_jaw_against_resistance.mp4'
    ),
    Video(
        title:'Jaw side to side' ,
        assetPath: 'assest/Videos/exercises/jaw/jaw_side_to_side.mp4'
    ),
    Video(
        title: 'Jaw side to side with resistance' ,
        assetPath: 'assest/Videos/exercises/jaw/jaw_side_to_side_with_resistance.mp4'
    ),
  ];
}