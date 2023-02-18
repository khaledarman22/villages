import 'package:flutter/material.dart';
import 'package:villages/assets/colors.dart';

// import model

class KnowMoreAUPage extends StatelessWidget {
  const KnowMoreAUPage({super.key});
  final text =
      'يهدف Village Development إلى تسهيل معرفة الخدمات المتوفرة داخل أى منطقة فى القرى المستهدفة، ومن خلاله يسهل التنقل داخل القرى بسهولة دون مواجهة صعوبات والتعرف على خدماتها المتاحة من مدارس و مستشفيات وغيرها من الخدمات و المعلومات المتعلقة بكل خدمة تشمل الحرفين والعاملين داخل كل قسم من ناحية اخرى،يمكننا تحديد الخدمات التى تحتاجها القرية من أجل تطويرها وتنميتها.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تعرف علينا',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: RichText(
              textDirection: TextDirection.rtl,
              text: TextSpan(
                text: text,
                style: const TextStyle(
                  color: InUseColors.componentsColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
