import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';

class Jaw_list {
  static List<String> Jaw_title = [
    'اتصال اللسان',
    // 'الفك المفتوح مع المقاومة',
    // 'إغلاق الفك ضد المقاومة',
    // 'الفك من جانب إلى جانب',
    // 'الفك من جانب إلى جانب مع المقاومة',
  ];
  static List<Video> Jaw_video = [
    Video(
        title: 'اتصال اللسان',
        assetPath: 'assest/Videos/exercises/jaw/soft_palate_tongue_contact.mp4'
    ),
    // Video(
    //     title: 'الفك المفتوح مع المقاومة',
    //     assetPath: 'assest/Videos/exercises/jaw/open_jaw_with_resistance.mp4'
    // ),
    // Video(
    //     title: 'إغلاق الفك ضد المقاومة',
    //     assetPath: 'assest/Videos/exercises/jaw/closing_jaw_against_resistance.mp4'
    // ),
    // Video(
    //     title:'الفك من جانب إلى جانب' ,
    //     assetPath: 'assest/Videos/exercises/jaw/jaw_side_to_side.mp4'
    // ),
    // Video(
    //     title: 'الفك من جانب إلى جانب مع المقاومة' ,
    //     assetPath: 'assest/Videos/exercises/jaw/jaw_side_to_side_with_resistance.mp4'
    // ),
  ];
}