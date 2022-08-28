import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key}) : super(key: key);
  String message = 'Default Message';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute =
        ModalRoute.of(context); //al modal route in abstract class
    //لازم يكون في اليسار نفس ما تم ارجاعه من اليمين تم ارجاع    modal rout null وباليسار بدو يرجع null
    if (modalRoute != null) {
      //ازا كان المودل راوت لا يساوي نل
      RouteSettings routeSettings =
          modalRoute.settings; //الراوت سيتنج بدي اعدادات الانتقال
      if (routeSettings != null) {
        // ازا الراوت سيتنج لا يساوي نل وبعتنا الو ماب
        Map<String, dynamic> data =
            routeSettings.arguments as Map<String, dynamic>;
        //الماب ممكن ابعت الها الكي تاعها String  وممكن ابعت الها بيوم من الايام ال value  انتجر عشان هيك بستخدم  يا object or dynamic
        //al routeSettings return object
        //بدنا نرجعوه لفئة بنقولو as عشان يعامل ال argument object كا ماب من نوع استرينج او داينمك او  as
        if (data.containsKey('message')) {
          message = data['message'];
          //ازا كانت الداتا تحتوي على كي خلي المسج يساوي داتا وهات منها كي اسمو مسج
        }
        //حكينا ايف عشان نقولو ازا الداتا موجود فيها الكي موجود ولا لاء والكي هوا مسج الي عرفناها بالارقيمنت وعرفنا متغير فوق يعطيني ديفولت مسج
      //   message =
      //       data.containsKey('message') ? data['message'] : 'Default Message1';
       }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Info'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.shade700,
              Colors.teal.shade200,
            ],
          ),
        ),
        child: Center(
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
