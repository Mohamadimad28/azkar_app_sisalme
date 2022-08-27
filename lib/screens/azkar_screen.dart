import 'package:azkar_app_sisalme/screens/about_app_screen.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter = 0;
    });
  }

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
        title: Text('Azkar'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/info_screen', arguments: {
                'message': 'Info Screen',
              });
            },
            icon: Icon(Icons.info),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAppScreen(
                    message: 'About App',
                  ),
                  // بحكي مع الكونستركتو مباشرة وببعتلو بيانات يعني انا الي انشئت الكونستركتو
                ),
              );
            },
            icon: Icon(Icons.question_answer),
          ),
        ],
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'استغفر الله',
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
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: _incrementCounter,
                    icon: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: _incrementCounter1,
                    icon: Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
