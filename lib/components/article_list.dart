import 'package:flutter/material.dart';

class Article_list {
  static List<String> title = [
    'صعوبات النطق',
    'أنواع صعوبات النطق',
    'أعراض صعوبات النطق',
    'أسباب صعوبات النطق',
    'تشخيص صعوبات النطق',
  ];
  static List<Text> cap = [
    const Text.rich(
      textDirection: TextDirection.rtl,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
      ),
      TextSpan(
        children: [
          TextSpan(
              text:
                  ' صعوبات النطق والكلام عند الأطفال، أو اضطرابات النطق والكلام عند الأطفال، أو مشاكل النطق والكلام عند الأطفال؛ جميعُها تراكيب تهدف إلى وصف المشاكل المتعلّقة بإنشاء أو تكوين أصوات الكلام الضروريّة لتواصل الطفل مع الآخرين؛ فما الكلام إلّا عملية لإنتاج أصواتٍ مُعينة تحمل المعنى المُراد للشخص المُستمع، وبالكلام يستطيع الأشخاص نقل أفكارهم، والتعبير عن مشاعرهم وإيصالها للآخرين، إذ يعدّ الكلام إحدى طُرق التواصل الرئيسيّة والتي يحتاجُ إنجازها إلى التنسيق الدقيق والتوافق بين أجزاءٍ متعددة من الجسم؛ بما في ذلك الرأس، والرقبة، والصدر، والبطن. '),
          TextSpan(text: '\n\n'),
          TextSpan(
              text:
                  'وفي إحدى الدراسات التي أُجريت في إيران حول اضطرابات التواصل ذكرت الدراسة أنّ اضطراب التواصل يُمثل مشكلة ذات نتائج سلبية طويلة الأمد، بحيث يؤثر هذا الاضطراب في الفرد والعائلة؛ بما يتضمّن التحصيل الأكاديمي خلال السنوات الأولى من عمر الطفل والاختيارات المهنيّة في المراحل اللاحقة بعد سن البلوغ، وتذكر الدراسة أنّ معدل انتشار اضطرابات الكلام الإجماليّة بلغ 14.8%، بحيث كانت 13.8% منها اضطرابات متعلّقة بصوت الكلام و0.47% مشاكل متعلّقة باضطراب الصوت و1.2% منها اضطراباتٍ مرتبطةٍ بالتأتأة ويختلف نمط انتشار تلك الأنواع الثلاثة من اضطرابات الكلام وفقًا لعوامل عدّة؛ من بينها تعليم الوالدين وعدد أفراد الأسرة، والجنس؛ حيث يُذكر أن اضطرابات الكلام أكثر انتشارًا بين الذكور مُقارنةً بالإناث، بحيث تصِل نسبة انتشاره إلى 16.7% بين صفوف الذكور مقارنةً بـ 12.7% للإناث في حين أنّ ترتيب الطفل بين إخوته، والديانة، وقرابة الأبوين لم تكن ذات تأثيرٍ في نمط الانتشار')
        ],
      ),
    ),

////////////////////////////////////////////
    Text.rich(
      textDirection: TextDirection.rtl,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      ),
      TextSpan(
        children: [
          TextSpan(
              text:
                  'تتعدد أنواع صعوبات النطق والكلام عند الأطفال، ومن أبرز هذه الصعوبات ما يأتي :'),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'التأتأة أو التلعثُم : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'ويُمكن تعريفه على أنّه أحد اضطرابات النطق أو اضطراب الطلاقة الذي يبدأ في مرحلة الطفولة المتعلّقة بمشاكل طلاقة النطق وتدفق الكلام بشكلٍ مُتكرر وكبير، والتي قد تكون حالة مزمنة تستمر حتى البلوغ في بعض الحالات بما يؤثر سلبيًا على الصعيد الشخصي والاجتماعي، ولكن في معظم الحالات يتغلّب الأطفال على التأتأة التي تُعدّ جزءًا من مرحلة تعلّم الكلام؛ إذ إنّهم يعرفون ما يريدون قوله، لكنّهم يجدون صعوبةً في تحويل ما يدور في عقولهم إلى كلام، وتظهر التأتأة بأشكالٍ متعددة مثل تكرار أو إطالة كلمةٍ معينة، أو مقطع صوتي، أو حرفٍ ساكن، أو حرف متحرك، أو التوقف أثناء الكلام عند الوصول إلى كلمة أو صوت لا يجيدون نُطقه'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'تعذر الأداء النُّطقي في الطفولة :',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'وهو أحد اضطرابات النطق غير الشائعة التي تتمثّل بصعوبة ممارسة الحركات الدقيقة عند التحدّث، ويعود السبب في ذلك إلى أنّ مواجهة دماغ الطفل صعوبةً في ترتيب الحركات وتوجيهها بما يؤثر في قدرة عضلات الكلام على العمل بشكلٍ طبيعي على الرغم من أنّها لا تكون ضعيفة، وفي هذا الحالة يجب تمرين عقل الطفل وتدريبه على كيفيّة وضع الخطط المتعلّقة بترتيب وتوجيه العضلات الخاصّة بالكلام والموجودة في الشفاه، والفك، واللسان، ليتمكّن الطفل من إصدار أصوات دقيقة، وقول كلمات دقيقة بسرعةٍ وإيقاعٍ'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'عسر التلفّظ عند الأطفال : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'وهو اضطرابٌ صوتيّ في الكلام الحركيّ يحدث نتيجةً ضعفٍ، أو شللٍ، أو عدم توافقٍ في العضلات المسؤولة عن إنتاج الكلام ويمكن ملاحظته على الطفل عن طريق الانتباه إلى حديثه غير الواضح والمشوّش لبعض الوقت، أو طوال الوقت، بالاعتماد على شدّة الضعف العصبي'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'اضطراب صوت الكلام : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'ويمكن تعريفه على أنّه اضطراب في التواصل يتمثّل باستمرار صعوبة نُطق الكلمات أو إصدار أصوات الكلام بشكلٍ صحيح؛ حيث يتطلّب إصدار الأصوات المتعلّقة بالكلام المعرفة الصوتية لتلك الأصوات، والقدرة على التنسيق بين عضلات الكلام والتنفّس والصوت؛ فما صوت الكلام إلّا تعبيرٌ واضحٌ عن الأصوات الفرديّة التي تتكوّن منها الكلمات المنطوقة ويتضمن اضطراب صوت الكلام '),
          TextSpan(
              text: 'نوعين من المشاكل هما :',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'اضطراب النطق : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'ويتمثّل بوجود مشكلةٍ في إصدار أصوات حروف معيّنة؛ مثل صوت حرف الشين. اضطراب العمليّة الخاصّة بتغيير بُنية الكلمة بما يخص الحركات البنائية، وهو أحد أنماط الأخطاء الصوتيّة التي تشمل عدم القدرة على نطق أحرف معيّنة.'),
          TextSpan(text: '\n'),
          TextSpan(
              text: ' اضطراب الصوت : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'إذ إنّ لكلّ عمرٍ جودة صوت يتمتّع بها الأطفال تختلف عن بقية الأعمار كما أنّها تختلف تبعًا للجنس، وإنّ غياب هذه الجودة بشكلٍ ملحوظ لطفلٍ ما يعني أنّه مُصاب باضطراب الصوت نتيجةَ عدم اهتزاز الطيات الصوتية بشكلٍ مناسبٍ لإنتاج الأصوات الواضحة، ومع هذا فإنّ معظم حالات اضطراب الصوت غير ضارّة وتزول وحدها، والبعض منها قد يتطلب استشارة الأخصائي. '),
        ],
      ),
    ),
    /////////////////////////////////////////////////
    Text.rich(
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        TextSpan(children: [
          TextSpan(
              text:
                  'اضطرابات الكلام قد تتضمن مجموعة من الأعراض التي تختلف حسب نوع الاضطراب وشدته، وفيما يلي أبرز الأعراض التي قد تشير إلى وجود اضطراب في الكلام : '),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• صعوبة في نطق الكلمات بوضوح: قد يكون الكلام غير مفهوم أو غير واضح للآخرين'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• التلعثم (التأتأة): تكرار الأصوات أو الكلمات، أو التوقف المتكرر خلال التحدث.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• التحدث ببطء أو بسرعة مفرطة: قد يتحدث الطفل بشكل بطيء أو سريع جداً مما يجعل من الصعب فهمه.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• نطق الأصوات بشكل غير صحيح: مثل تحويل الحروف أو عدم القدرة على نطق بعض الأصوات بشكل صحيح، مثل نطق "س" كـ "ث".'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• صعوبة في تحريك الفم أو اللسان: مما يؤدي إلى مشاكل في التحكم في النطق والتواصل.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• فقدان الكلمات أو التوقف المفاجئ في الكلام: عدم القدرة على استرجاع الكلمات أو الأفكار أثناء الحديث.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• عدم القدرة على تشكيل جمل صحيحة: صعوبة في ترتيب الكلمات في جمل سليمة من الناحية اللغوية.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• صعوبة في التواصل الاجتماعي: مشاكل في التفاعل مع الآخرين بسبب اضطرابات في النطق أو عدم القدرة على التعبير عن الأفكار بوضوح.'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text:
                  'هذه الأعراض قد تكون جزءًا من اضطرابات مثل التأتأة، اضطرابات النطق الصوتي، عسر التلفظ، أو الأبراكسيا، وقد تختلف شدة هذه الأعراض من شخص لآخر بناءً على طبيعة الاضطراب. يُنصح بالتوجه إلى مختص في النطق واللغة لإجراء التقييم والعلاج المناسب.'),
        ])),
    ///////////////////////////////////////////////////////////////////////
    Text.rich(
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        TextSpan(children: [
          TextSpan(
              text:
                  ' يعتقد الكثيرون أنّ الكلام عملية سهلة، في حين أنّه عملية معقّدة تحتاج إلى تنسيق القدرة على فهم اللغة وإنتاج الكلام من الدماغ، ويتضمّن ذلك التوافق الدقيق بين الأعصاب، والعضلات الخاصّة بالكلام من الشفتين، واللسان، والفم، والحنجرة التي تحتوي على الحبال الصوتيّة، وعضلات الجهاز التنفسي أيضًا، ويُمكن بيان مُسببات صعوبات النطق والكلام عند الأطفال وعوامل الخطر على النّحو التالي : '),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'الأسباب الرئيسية : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'بالمجمل فإنّ سبب اضطراب النطق والكلام عند الأطفال غير معروف، لكن قد تتسبّب بعض المشاكل الأخرى بحدوثه، ومن أبرزها ما يأتي : تعرّض الدماغ للإصابة -  الإعاقة الفكرية، أو الاضطرابات المتعلّقة بالنمو-  فقدان السمع، أو مشاكل السمع مثل عدوى الأذن السابقة. مشاكل جسدية تؤثر في النطق والكلام؛ مثل الحنك المشقوق اضطرابات تؤثر في الأعصاب المسؤولة عن الكلام '),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'عوامل الخطر : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'من ناحيةٍ أُخرى تظهر عوامل خطر تزيد من احتماليّة الإصابة باضطرابات النطق والكلام، والتي قد تتضمّن العوامل الموضّحة في الأسباب، ومن أبرز عوامل الخطر الأخرى ما يأتي: لاضطرابات المتعلّقة بالنمو؛ مثل التوحّد - الاضطرابات المتعلّقة بالوراثة والجينات؛ مثل متلازمة داون - فقدان حاسّة السّمع - اضطرابات المتعلّقة بالجهاز العصبي؛ مثل الشلل الدماغي - الأمراض المختلفة؛ ومن أمثلتها عدوى الأذن المتكررة - العادات الخاطئة لدى الأطفال مثل مصّ الإبهام، أو استخدام اللهايّة بشكلٍ مبالغ فيه - تدني المستوى التعليمي للوالدين -  قلّة دعم التعلّم من قِبل أفراد الأسرة في المنزل'),
        ])),
    ////////////////////////////////////
    Text.rich(
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        TextSpan(children: [
          TextSpan(
              text:
                  ' يتمّ تشخيص صعوبات النطق والكلام من قِبل أخصائي أمراض النطق واللّغة، ويعتمد الأخصائي على دراسة مجموعة الأعراض الظاهرة، ومعرفة التاريخ الطبي والعائلي للطفل، والفحص السريري المُتضمن مراقبة الأعضاء المسؤولة عن الكلام من شفتين، وفك، ولسان، وعضلات الفم والحلق، كل ذلك في سبيل الوصول إلى التشخيص الدقيق وتحديد الاضطراب الذي يُعاني منه الطفل واستبعاد إصابته بالاضطرابات الأخرى، كما يمكن أن يلجأ الأخصائي إلى إجراءاتٍ أخرى لتشخيص اضطرابات الكلام والنطق، ومن أبرزها اختبار دنفر لفحص النطق والذي يقيّم وضوح النطق لدى الطفل و اختبار نغمة الصوت، ويهدف هذا الاختبار إلى فحص الكلام من جوانب عدّة؛ تشمل درجة الصوت، وصياغة الكلام وأنماط الكلام وصوته')
        ])),
  ];
  static List<String> img = [
    'assest/images/article/img1.jpg',
    'assest/images/article/img2.jpg',
    'assest/images/article/img3.jpg',
    'assest/images/article/img4.jpg',
    'assest/images/article/img5.jpg',
  ];

  static List<Text> Homecap = [
    const Text.rich(
      textDirection: TextDirection.rtl,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(
        color: Color(0xFF475766),
        fontSize: 15,
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
      ),
      TextSpan(
        children: [
          TextSpan(
              text:
                  ' صعوبات النطق والكلام عند الأطفال، أو اضطرابات النطق والكلام عند الأطفال، أو مشاكل النطق والكلام عند الأطفال؛ جميعُها تراكيب تهدف إلى وصف المشاكل المتعلّقة بإنشاء أو تكوين أصوات الكلام الضروريّة لتواصل الطفل مع الآخرين؛ فما الكلام إلّا عملية لإنتاج أصواتٍ مُعينة تحمل المعنى المُراد للشخص المُستمع، وبالكلام يستطيع الأشخاص نقل أفكارهم، والتعبير عن مشاعرهم وإيصالها للآخرين، إذ يعدّ الكلام إحدى طُرق التواصل الرئيسيّة والتي يحتاجُ إنجازها إلى التنسيق الدقيق والتوافق بين أجزاءٍ متعددة من الجسم؛ بما في ذلك الرأس، والرقبة، والصدر، والبطن. '),
          TextSpan(text: '\n\n'),
          TextSpan(
              text:
                  'وفي إحدى الدراسات التي أُجريت في إيران حول اضطرابات التواصل ذكرت الدراسة أنّ اضطراب التواصل يُمثل مشكلة ذات نتائج سلبية طويلة الأمد، بحيث يؤثر هذا الاضطراب في الفرد والعائلة؛ بما يتضمّن التحصيل الأكاديمي خلال السنوات الأولى من عمر الطفل والاختيارات المهنيّة في المراحل اللاحقة بعد سن البلوغ، وتذكر الدراسة أنّ معدل انتشار اضطرابات الكلام الإجماليّة بلغ 14.8%، بحيث كانت 13.8% منها اضطرابات متعلّقة بصوت الكلام و0.47% مشاكل متعلّقة باضطراب الصوت و1.2% منها اضطراباتٍ مرتبطةٍ بالتأتأة ويختلف نمط انتشار تلك الأنواع الثلاثة من اضطرابات الكلام وفقًا لعوامل عدّة؛ من بينها تعليم الوالدين وعدد أفراد الأسرة، والجنس؛ حيث يُذكر أن اضطرابات الكلام أكثر انتشارًا بين الذكور مُقارنةً بالإناث، بحيث تصِل نسبة انتشاره إلى 16.7% بين صفوف الذكور مقارنةً بـ 12.7% للإناث في حين أنّ ترتيب الطفل بين إخوته، والديانة، وقرابة الأبوين لم تكن ذات تأثيرٍ في نمط الانتشار')
        ],
      ),
    ),

////////////////////////////////////////////
    Text.rich(
      textDirection: TextDirection.rtl,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(
        color: Color(0xFF475766),
        fontSize: 15,
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
      ),
      TextSpan(
        children: [
          TextSpan(
              text:
                  'تتعدد أنواع صعوبات النطق والكلام عند الأطفال، ومن أبرز هذه الصعوبات ما يأتي :'),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'التأتأة أو التلعثُم : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'ويُمكن تعريفه على أنّه أحد اضطرابات النطق أو اضطراب الطلاقة الذي يبدأ في مرحلة الطفولة المتعلّقة بمشاكل طلاقة النطق وتدفق الكلام بشكلٍ مُتكرر وكبير، والتي قد تكون حالة مزمنة تستمر حتى البلوغ في بعض الحالات بما يؤثر سلبيًا على الصعيد الشخصي والاجتماعي، ولكن في معظم الحالات يتغلّب الأطفال على التأتأة التي تُعدّ جزءًا من مرحلة تعلّم الكلام؛ إذ إنّهم يعرفون ما يريدون قوله، لكنّهم يجدون صعوبةً في تحويل ما يدور في عقولهم إلى كلام، وتظهر التأتأة بأشكالٍ متعددة مثل تكرار أو إطالة كلمةٍ معينة، أو مقطع صوتي، أو حرفٍ ساكن، أو حرف متحرك، أو التوقف أثناء الكلام عند الوصول إلى كلمة أو صوت لا يجيدون نُطقه'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'تعذر الأداء النُّطقي في الطفولة :',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'وهو أحد اضطرابات النطق غير الشائعة التي تتمثّل بصعوبة ممارسة الحركات الدقيقة عند التحدّث، ويعود السبب في ذلك إلى أنّ مواجهة دماغ الطفل صعوبةً في ترتيب الحركات وتوجيهها بما يؤثر في قدرة عضلات الكلام على العمل بشكلٍ طبيعي على الرغم من أنّها لا تكون ضعيفة، وفي هذا الحالة يجب تمرين عقل الطفل وتدريبه على كيفيّة وضع الخطط المتعلّقة بترتيب وتوجيه العضلات الخاصّة بالكلام والموجودة في الشفاه، والفك، واللسان، ليتمكّن الطفل من إصدار أصوات دقيقة، وقول كلمات دقيقة بسرعةٍ وإيقاعٍ'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'عسر التلفّظ عند الأطفال : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'وهو اضطرابٌ صوتيّ في الكلام الحركيّ يحدث نتيجةً ضعفٍ، أو شللٍ، أو عدم توافقٍ في العضلات المسؤولة عن إنتاج الكلام ويمكن ملاحظته على الطفل عن طريق الانتباه إلى حديثه غير الواضح والمشوّش لبعض الوقت، أو طوال الوقت، بالاعتماد على شدّة الضعف العصبي'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'اضطراب صوت الكلام : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'ويمكن تعريفه على أنّه اضطراب في التواصل يتمثّل باستمرار صعوبة نُطق الكلمات أو إصدار أصوات الكلام بشكلٍ صحيح؛ حيث يتطلّب إصدار الأصوات المتعلّقة بالكلام المعرفة الصوتية لتلك الأصوات، والقدرة على التنسيق بين عضلات الكلام والتنفّس والصوت؛ فما صوت الكلام إلّا تعبيرٌ واضحٌ عن الأصوات الفرديّة التي تتكوّن منها الكلمات المنطوقة ويتضمن اضطراب صوت الكلام '),
          TextSpan(
              text: 'نوعين من المشاكل هما :',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'اضطراب النطق : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'ويتمثّل بوجود مشكلةٍ في إصدار أصوات حروف معيّنة؛ مثل صوت حرف الشين. اضطراب العمليّة الخاصّة بتغيير بُنية الكلمة بما يخص الحركات البنائية، وهو أحد أنماط الأخطاء الصوتيّة التي تشمل عدم القدرة على نطق أحرف معيّنة.'),
          TextSpan(text: '\n'),
          TextSpan(
              text: ' اضطراب الصوت : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'إذ إنّ لكلّ عمرٍ جودة صوت يتمتّع بها الأطفال تختلف عن بقية الأعمار كما أنّها تختلف تبعًا للجنس، وإنّ غياب هذه الجودة بشكلٍ ملحوظ لطفلٍ ما يعني أنّه مُصاب باضطراب الصوت نتيجةَ عدم اهتزاز الطيات الصوتية بشكلٍ مناسبٍ لإنتاج الأصوات الواضحة، ومع هذا فإنّ معظم حالات اضطراب الصوت غير ضارّة وتزول وحدها، والبعض منها قد يتطلب استشارة الأخصائي. '),
        ],
      ),
    ),
    /////////////////////////////////////////////////
    Text.rich(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Color(0xFF475766),
          fontSize: 15,
          fontStyle: FontStyle.normal,
          fontFamily: 'Inter',
        ),
        TextSpan(children: [
          TextSpan(
              text:
                  'اضطرابات الكلام قد تتضمن مجموعة من الأعراض التي تختلف حسب نوع الاضطراب وشدته، وفيما يلي أبرز الأعراض التي قد تشير إلى وجود اضطراب في الكلام : '),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• صعوبة في نطق الكلمات بوضوح: قد يكون الكلام غير مفهوم أو غير واضح للآخرين'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• التلعثم (التأتأة): تكرار الأصوات أو الكلمات، أو التوقف المتكرر خلال التحدث.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• التحدث ببطء أو بسرعة مفرطة: قد يتحدث الطفل بشكل بطيء أو سريع جداً مما يجعل من الصعب فهمه.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• نطق الأصوات بشكل غير صحيح: مثل تحويل الحروف أو عدم القدرة على نطق بعض الأصوات بشكل صحيح، مثل نطق "س" كـ "ث".'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• صعوبة في تحريك الفم أو اللسان: مما يؤدي إلى مشاكل في التحكم في النطق والتواصل.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• فقدان الكلمات أو التوقف المفاجئ في الكلام: عدم القدرة على استرجاع الكلمات أو الأفكار أثناء الحديث.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• عدم القدرة على تشكيل جمل صحيحة: صعوبة في ترتيب الكلمات في جمل سليمة من الناحية اللغوية.'),
          TextSpan(text: '\n'),
          TextSpan(
              text:
                  '• صعوبة في التواصل الاجتماعي: مشاكل في التفاعل مع الآخرين بسبب اضطرابات في النطق أو عدم القدرة على التعبير عن الأفكار بوضوح.'),
          TextSpan(text: '\n\n'),
          TextSpan(
              text:
                  'هذه الأعراض قد تكون جزءًا من اضطرابات مثل التأتأة، اضطرابات النطق الصوتي، عسر التلفظ، أو الأبراكسيا، وقد تختلف شدة هذه الأعراض من شخص لآخر بناءً على طبيعة الاضطراب. يُنصح بالتوجه إلى مختص في النطق واللغة لإجراء التقييم والعلاج المناسب.'),
        ])),
    ///////////////////////////////////////////////////////////////////////
    Text.rich(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Color(0xFF475766),
          fontSize: 15,
          fontStyle: FontStyle.normal,
          fontFamily: 'Inter',
        ),
        TextSpan(children: [
          TextSpan(
              text:
                  ' يعتقد الكثيرون أنّ الكلام عملية سهلة، في حين أنّه عملية معقّدة تحتاج إلى تنسيق القدرة على فهم اللغة وإنتاج الكلام من الدماغ، ويتضمّن ذلك التوافق الدقيق بين الأعصاب، والعضلات الخاصّة بالكلام من الشفتين، واللسان، والفم، والحنجرة التي تحتوي على الحبال الصوتيّة، وعضلات الجهاز التنفسي أيضًا، ويُمكن بيان مُسببات صعوبات النطق والكلام عند الأطفال وعوامل الخطر على النّحو التالي : '),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'الأسباب الرئيسية : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'بالمجمل فإنّ سبب اضطراب النطق والكلام عند الأطفال غير معروف، لكن قد تتسبّب بعض المشاكل الأخرى بحدوثه، ومن أبرزها ما يأتي : تعرّض الدماغ للإصابة -  الإعاقة الفكرية، أو الاضطرابات المتعلّقة بالنمو-  فقدان السمع، أو مشاكل السمع مثل عدوى الأذن السابقة. مشاكل جسدية تؤثر في النطق والكلام؛ مثل الحنك المشقوق اضطرابات تؤثر في الأعصاب المسؤولة عن الكلام '),
          TextSpan(text: '\n\n'),
          TextSpan(
              text: 'عوامل الخطر : ',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text:
                  'من ناحيةٍ أُخرى تظهر عوامل خطر تزيد من احتماليّة الإصابة باضطرابات النطق والكلام، والتي قد تتضمّن العوامل الموضّحة في الأسباب، ومن أبرز عوامل الخطر الأخرى ما يأتي: لاضطرابات المتعلّقة بالنمو؛ مثل التوحّد - الاضطرابات المتعلّقة بالوراثة والجينات؛ مثل متلازمة داون - فقدان حاسّة السّمع - اضطرابات المتعلّقة بالجهاز العصبي؛ مثل الشلل الدماغي - الأمراض المختلفة؛ ومن أمثلتها عدوى الأذن المتكررة - العادات الخاطئة لدى الأطفال مثل مصّ الإبهام، أو استخدام اللهايّة بشكلٍ مبالغ فيه - تدني المستوى التعليمي للوالدين -  قلّة دعم التعلّم من قِبل أفراد الأسرة في المنزل'),
        ])),
    ////////////////////////////////////
    Text.rich(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Color(0xFF475766),
          fontSize: 15,
          fontStyle: FontStyle.normal,
          fontFamily: 'Inter',
        ),
        TextSpan(children: [
          TextSpan(
              text:
                  ' يتمّ تشخيص صعوبات النطق والكلام من قِبل أخصائي أمراض النطق واللّغة، ويعتمد الأخصائي على دراسة مجموعة الأعراض الظاهرة، ومعرفة التاريخ الطبي والعائلي للطفل، والفحص السريري المُتضمن مراقبة الأعضاء المسؤولة عن الكلام من شفتين، وفك، ولسان، وعضلات الفم والحلق، كل ذلك في سبيل الوصول إلى التشخيص الدقيق وتحديد الاضطراب الذي يُعاني منه الطفل واستبعاد إصابته بالاضطرابات الأخرى، كما يمكن أن يلجأ الأخصائي إلى إجراءاتٍ أخرى لتشخيص اضطرابات الكلام والنطق، ومن أبرزها اختبار دنفر لفحص النطق والذي يقيّم وضوح النطق لدى الطفل و اختبار نغمة الصوت، ويهدف هذا الاختبار إلى فحص الكلام من جوانب عدّة؛ تشمل درجة الصوت، وصياغة الكلام وأنماط الكلام وصوته')
        ])),
  ];
}
