import 'package:azkar_app_sisalme/screens/about_app_screen.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'استغفر الله';

  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  //
  // void _incrementCounter1() {
  //   setState(() {
  //     _counter = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        // automaticallyImplyLeading: false,
        title: const Text('Azkar'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/info_screen',
                arguments: {
                  'message': 'Info Screen',
                },
              );
            },
            icon: const Icon(Icons.info),
          ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const AboutAppScreen(
          //           message: 'About App',
          //         ),
          //         // بحكي مع الكونستركتو مباشرة وببعتلو بيانات يعني انا الي انشئت الكونستركتو
          //       ),
          //     );
          //   },
          //   icon: const Icon(Icons.question_answer),
          // ),
          PopupMenuButton <String>(
            onSelected: (value){
               if(_content != value){
                 setState((){
                   _content = value;
                   _counter = 0;

                 });
               }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('استغفر الله'),
                  value: 'استغفر الله',
                  height: 30,
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('الحمد الله'),
                  value: 'الحمد الله',
                  height: 30,
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                  height: 30,
                ),
              ];
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: const EdgeInsetsDirectional.only(bottom: 20),
              clipBehavior: Clip.antiAlias,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                   Expanded(
                      child: Text(
                        _content,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  )),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    child: Text(
                      '$_counter',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    child: const Text('تسبيح'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade600,
                      minimumSize: const Size(0, 45),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    child: const Text('اعادة'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade600,
                      minimumSize: const Size(0, 45),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: 60,
                //   height: 60,
                //   margin: EdgeInsetsDirectional.only(top: 10),
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //     shape: BoxShape.circle,
                //   ),
                //   child: IconButton(
                //     onPressed: _incrementCounter,
                //     icon: Icon(Icons.add),
                //   ),
                // ),
                // Container(
                //   width: 60,
                //   height: 60,
                //   margin: EdgeInsetsDirectional.only(top: 10,start: 10),
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //     shape: BoxShape.circle,
                //   ),
                //   child: IconButton(
                //     onPressed: _incrementCounter1,
                //     icon: Icon(Icons.delete),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
