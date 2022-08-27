import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('About App'),
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
              widget.message,
              //state  بنفعش احكي معها من برا لانها برايفت
              //وبستخدم widget  لانه كل state الها widget
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        )
        // Center(
        //بستخدم هادي الطريقة لمه استخدم stateless
        //   child: Text(
        //     message,
        //     style: TextStyle(
        //       fontSize: 25,
        //     ),
        //   ),
        // ),
        );
  }
}
