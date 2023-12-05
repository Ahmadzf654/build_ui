import 'package:build_ui/screen_three.dart';
import 'package:build_ui/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
            child: Text(
          'Navigation Drawer',
          style: TextStyle(fontFamily: 'PermanentMarker', color: Colors.white),
        )),
      ),
      drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
        children:  [


          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/WhatsApp Image 2023-07-18 at 11.07.22 AM.jpeg'),
              ),
              accountName: Text(
                'Ahmad Ziam',
                style: TextStyle(fontFamily: 'PermanentMarker'),
              ),
              accountEmail: Text('ahmadziam284@gmail.com',
                  style: TextStyle(fontFamily: 'PermanentMarker'))),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Page 1', style: TextStyle(fontFamily: 'Foldit', fontWeight: FontWeight.bold),),
            onTap: (){Navigator.pushNamed(context, ScreenTwo.id);}
          ),
          ListTile(
            leading: const Icon(Icons.add_a_photo_outlined),
            title: const Text('Page 2', style: TextStyle(fontFamily: 'Foldit', fontWeight: FontWeight.bold),),
            onTap: (){Navigator.pushNamed(context, ScreenThree.id);}
          ),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout', style: TextStyle(fontFamily: 'Foldit', fontWeight: FontWeight.bold),),
              onTap: (){Navigator.pushNamed(context, HomeScreen.id);}
          ),
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your name:',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => ScreenTwo()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Foldit',
                        fontStyle: FontStyle.italic,
                        fontSize: 30),
                  )))
        ],
      ),
    );
  }
}
