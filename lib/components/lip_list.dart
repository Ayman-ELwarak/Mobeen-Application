import 'package:flutter/material.dart';
import 'package:mobile_app/models/video_model.dart';

class Lip_list {
  static List<String> Lip_title = [
    'إغلاق الشفاه بالضغط',
    'فتح الشفاه',
    'تجعيد الشفاه',
    'تجعيد الشفاه - صعب',
    'تجعيد الشفاه - الشفاه مفتوحة قليلا',
    'ابتسامة منكمشة',
    'ابتسامة منكمشة - الشفاه مفتوحة قليلا',
    'لف الشفة العليا',
    'لف الشفة السفلية',
    'لفافات الشفة العلوية والسفلية',
    'تجعيد الشفة السفلية',
    'شد الشفة العليا',
    'شد الشفة السفلية',
    'شد الشفة العلوية والسفلية',
    'افتح فمك وتجعد',
    'افتح فمك وابتسم',
    'إغلاق الشفاه أثناء حبس الهواء',
    'إغلاق الشفاه أثناء حبس الهواء - صعب',
    'ابتسم وتجعد',
  ];
  static List<Video> Lip_video = [
    Video(
        title: 'إغلاق الشفاه بالضغط',
        assetPath: 'assest/Videos/exercises/lip/lip_closure_with_pressure.mp4'
    ),
    Video(
        title: 'فتح الشفاه',
        assetPath: 'assest/Videos/exercises/lip/lip_opening.mp4'
    ),
    Video(
        title: 'تجعيد الشفاه',
        assetPath: 'assest/Videos/exercises/lip/lip_pucker.mp4'
    ),
    Video(
        title: 'تجعيد الشفاه - صعب',
        assetPath: 'assest/Videos/exercises/lip/lip_pucker_difficult.mp4'
    ),
    Video(
        title: 'تجعيد الشفاه - الشفاه مفتوحة قليلا',
        assetPath: 'assest/Videos/exercises/lip/lip_pucker_lips_slightly_open.mp4'
    ),
    Video(
        title: 'ابتسامة منكمشة',
        assetPath: 'assest/Videos/exercises/lip/retracted_smile.mp4'
    ),
    Video(
        title: 'ابتسامة منكمشة - الشفاه مفتوحة قليلا',
        assetPath: 'assest/Videos/exercises/lip/retracted_smile_lips_slightly_open.mp4'
    ),
    Video(
        title: 'لف الشفة العليا',
        assetPath: 'assest/Videos/exercises/lip/upper_lip_wrap.mp4'
    ),
    Video(
        title: 'لف الشفة السفلية',
        assetPath: 'assest/Videos/exercises/lip/lower_lip_wrap.mp4'
    ),
    Video(
        title: 'لفافات الشفة العلوية والسفلية',
        assetPath: 'assest/Videos/exercises/lip/Upper_and_lower_lip_wraps.mp4'
    ),
    Video(
        title: 'تجعيد الشفة السفلية',
        assetPath: 'assest/Videos/exercises/lip/lower_lip_curl.mp4'
    ),
    Video(
        title: 'شد الشفة العليا',
        assetPath: 'assest/Videos/exercises/lip/upper_lip_stretch.mp4'
    ),
    Video(
        title: 'شد الشفة السفلية',
        assetPath: 'assest/Videos/exercises/lip/lower_lip_stretch.mp4'
    ),
    Video(
        title: 'شد الشفة العلوية والسفلية',
        assetPath: 'assest/Videos/exercises/lip/upper_and_lower_lip_stretch.mp4'
    ),
    Video(
        title: 'افتح فمك وتجعد',
        assetPath: 'assest/Videos/exercises/lip/open_mouth_and_pucker.mp4'
    ),
    Video(
        title:  'افتح فمك وابتسم',
        assetPath: 'assest/Videos/exercises/lip/open_mouth_and_smile.mp4'
    ),
    Video(
        title: 'إغلاق الشفاه أثناء حبس الهواء',
        assetPath: 'assest/Videos/exercises/lip/lip_closure_while_holding_air.mp4'
    ),
    Video(
        title: 'إغلاق الشفاه أثناء حبس الهواء - صعب',
        assetPath: 'assest/Videos/exercises/lip/lip_closure_while_holding_air_difficult.mp4'
    ),
    Video(
        title:'ابتسم وتجعد',
        assetPath: 'assest/Videos/exercises/lip/smile_and_pucker.mp4'
    )
  ];

}