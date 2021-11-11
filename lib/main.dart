import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: HomePage(),
      ),
    );

class Menu extends StatefulWidget {
  final int? index;
  const Menu({Key? key, this.index}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      widget.index.toString(),
    ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
                builder: (context) => Menu(
                      index: index,
                    ));
          case 1:
            return CupertinoTabView(
                builder: (context) => Menu(
                      index: index,
                    ));
          case 2:
            return CupertinoTabView(
                builder: (context) => Menu(
                      index: index,
                    ));

          default:
            return CupertinoTabView(
              builder: (context) => const Scaffold(
                body: Center(
                  child: Text("Error"),
                ),
              ),
            );
        }
      },
      backgroundColor: Colors.white,
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
          ),
        ],
        currentIndex: 1,
      ),
    );
  }
}
