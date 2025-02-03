import 'package:mobile_app/models/video_model.dart';

class letter_list
{
  static List<String> letter_img = [
    'assest/images/letters/ب.png',
    'assest/images/letters/ت.png',
    'assest/images/letters/ث.png',
    'assest/images/letters/ج.png',
    'assest/images/letters/ر.png',
    'assest/images/letters/ط.png',
    'assest/images/letters/ظ.png',
    'assest/images/letters/ل.png',
    'assest/images/letters/م.png',
  ];
  static List<Video> letter_video = 
  [
    Video(
        title: 'ب',
        assetPath: 'assest/Videos/letters/b.mp4'
    ),
    Video(
        title: 'ت',
        assetPath: 'assest/Videos/letters/s.mp4'
    ),
    Video(
        title: 'ث',
        assetPath: 'assest/Videos/letters/t.mp4'
    ),
    Video(
        title:'ج' ,
        assetPath: 'assest/Videos/letters/g.mp4'
    ),
    Video(
        title: 'ر' ,
        assetPath: 'assest/Videos/letters/r.mp4'
    ),
    Video(
        title: 'ط',
        assetPath: 'assest/Videos/letters/tt.mp4'
    ),
    Video(
        title: 'ظ',
        assetPath: 'assest/Videos/letters/z.mp4'
    ),
    Video(
        title:'ل' ,
        assetPath: 'assest/Videos/letters/l.mp4'
    ),
    Video(
        title: 'م' ,
        assetPath: 'assest/Videos/letters/m.mp4'
    ),
  ];
}