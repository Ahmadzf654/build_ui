import 'package:build_ui/screen_three.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Navigation Drawer',
          style: TextStyle(fontFamily: 'PermanentMarker'),
        ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){

                  return ListTile(

                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('asset/WhatsApp Image 2023-07-18 at 11.07.22 AM.jpeg'),
                      ),
                      title: const Text('Ahmad Ziam', style: TextStyle(fontFamily: 'Foldit', fontWeight: FontWeight.bold),),
                      onTap: (){Navigator.pushNamed(context, ScreenTwo.id);}
                  );
                }),
          )
        ],
      ),
    );
  }
}
