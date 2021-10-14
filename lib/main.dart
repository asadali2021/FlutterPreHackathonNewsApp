import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mynewsapp/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text("NewsApp"),
          ),
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: const Icon(
              Icons.menu, // add custom icons also
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search()));
                  },
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.grey[300],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Container(
                    color: Colors.green[900],
                    child: const Center(
                        child: Text(
                      "Explore The News App",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),
                ),
                const ListTile(
                  title: Text("Login and SignUp"),
                ),
                const ListTile(
                  title: Text("User Profile"),
                ),
                const ListTile(
                  title: Text("Favourite Screen"),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
