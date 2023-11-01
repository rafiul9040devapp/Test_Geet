import 'package:flutter/material.dart';

class WFloatingButton extends StatelessWidget {
  const WFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      appBar: AppBar(
        title: Text(
          MediaQuery.of(context).size.width < 500
              ? "Navigation Drawer"
              : "Floating Action Bar",
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black26,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Coding With Fun"),
              accountEmail: Text("rafiulbinoy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("assets/images/road.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: AssetImage("assets/images/rose.jpg"),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("assets/images/rose.jpg"),
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("HOME"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("SHOP"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("FAVORITES"),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Labels",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.label_important),
              title: const Text("RED"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.label_important),
              title: const Text("GREEN"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.label_important),
              title: const Text("BLUE"),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.cyan.shade100,
            context: context,
            builder: (BuildContext context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.black87,
        foregroundColor: Colors.cyan.shade50,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        mini: false,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    " ",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    "Fav",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
