import 'package:mobile_app/models/video_model.dart';

class Cheek_list
{
  static List<String> Cheek_title = [
    'افتح الفك على اتساعه',
    'شد الخد',
    'شد الخد إلى اليمين',
    'شد الخد إلى اليسار',
    'شد الخد بالملعقة إلى اليمين',
    'شد الخد بالملعقة الي اليسار',
    'شفط الخد',
  ];
  static List<Video> Cheek_Video = [
    Video(
        title: 'افتح الفك على اتساعه',
        assetPath: 'assest/Videos/exercises/cheek/open_jaw_wide.mp4'
    ),
    Video(
        title: 'شد الخد',
        assetPath: 'assest/Videos/exercises/cheek/cheek_stretch.mp4'
    ),
    Video(
        title: 'شد الخد إلى اليمين',
        assetPath: 'assest/Videos/exercises/cheek/cheek_stretch_right.mp4'
    ),
    Video(
        title: 'شد الخد إلى اليسار',
        assetPath: 'assest/Videos/exercises/cheek/cheek_stretch_left.mp4'
    ),
    Video(
        title: 'شد الخد بالملعقة إلى اليمين',
        assetPath: 'assest/Videos/exercises/cheek/cheek_stretch_with_spoon_right.mp4'
    ),
    Video(
        title: 'شد الخد بالملعقة الي اليسار',
        assetPath: 'assest/Videos/exercises/cheek/cheek_stretch_with_spoon_left.mp4'
    ),
    Video(
        title: 'شفط الخد',
        assetPath: 'assest/Videos/exercises/cheek/cheek_suck.mp4'
    ),
  ];
}