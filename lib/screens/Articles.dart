import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  int index;
  static List<String> images = [];
  static List<String> name = [];
  static List<String> captian = [];

  ArticlePage({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                    const Spacer(),
                    const Menu(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        'صعوبات النطق والكلام عند الأطفال',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        ' صعوبات النطق والكلام عند الأطفال، أو اضطرابات النطق والكلام عند الأطفال، أو مشاكل النطق والكلام عند الأطفال؛ جميعُها تراكيب تهدف إلى وصف المشاكل المتعلّقة بإنشاء أو تكوين أصوات الكلام الضروريّة لتواصل الطفل مع الآخرين؛ فما الكلام إلّا عملية لإنتاج أصواتٍ مُعينة تحمل المعنى المُراد للشخص المُستمع، وبالكلام يستطيع الأشخاص نقل أفكارهم، والتعبير عن مشاعرهم وإيصالها للآخرين، إذ يعدّ الكلام إحدى طُرق التواصل الرئيسيّة والتي يحتاجُ إنجازها إلى التنسيق الدقيق والتوافق بين أجزاءٍ متعددة من الجسم؛ بما في ذلك الرأس، والرقبة، والصدر، والبطن',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        " وفي إحدى الدراسات التي أُجريت في إيران حول اضطرابات التواصل ذكرت الدراسة أنّ اضطراب التواصل يُمثل مشكلة ذات نتائج سلبية طويلة الأمد، بحيث يؤثر هذا الاضطراب في الفرد والعائلة؛ بما يتضمّن التحصيل الأكاديمي خلال السنوات الأولى من عمر الطفل والاختيارات المهنيّة في المراحل اللاحقة بعد سن البلوغ، وتذكر الدراسة أنّ معدل انتشار اضطرابات الكلام الإجماليّة بلغ 14.8%، بحيث كانت 13.8% منها اضطرابات متعلّقة بصوت الكلام و0.47% مشاكل متعلّقة باضطراب الصوت و1.2% منها اضطراباتٍ مرتبطةٍ بالتأتأة ويختلف نمط انتشار تلك الأنواع الثلاثة من اضطرابات الكلام وفقًا لعوامل عدّة؛ من بينها تعليم الوالدين وعدد أفراد الأسرة، والجنس؛ حيث يُذكر أن اضطرابات الكلام أكثر انتشارًا بين الذكور مُقارنةً بالإناث، بحيث تصِل نسبة انتشاره إلى 16.7% بين صفوف الذكور مقارنةً بـ 12.7% للإناث في حين أنّ ترتيب الطفل بين إخوته، والديانة، وقرابة الأبوين لم تكن ذات تأثيرٍ في نمط الانتشار",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 15, right: 15, bottom: 10),
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.RwzFtxw1qHoXWOXefLZKpAHaDB?rs=1&pid=ImgDetMain"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //backgroundColor: const Color(0xFF1E3A3D),
        ),
      ),
    );
  }
}
