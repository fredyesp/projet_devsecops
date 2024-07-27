import 'package:chatssi/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:chatssi/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {

  const MyDrawer({super.key});

  // Logout method
  void logout(){
    // get auth service
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
          children: [
            // logo 
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.message,
                  color: Theme.of(context).colorScheme.primary,
                  size: 40,
                  ),
              ),
            ),
            
            // home list tile
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                title: const Text("A C C U E I L"),
                leading: const Icon(Icons.home),
                onTap: (){
                  // pop the drawer
                  Navigator.pop(context);
                },
              ),
            ),

            // settings list tile
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                title: const Text("P A R A M E T R E S"),
                leading: const Icon(Icons.settings),
                onTap: (){
                  // pop the drawer
                  Navigator.pop(context);

                  // navigate to settings page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage()
                    ), 
                  );
                },
              ),
            ),
          ],
        ),

          // logout list tile
          Padding(
            padding: const EdgeInsets.only(left:25.0, bottom: 25),
            child: ListTile(
              title: const Text("Q U I T T E R"),
              leading: const Icon(Icons.logout),
              onTap: (){
                logout();
              },
            ),
          ),

        ],
      ),
    );
  }
  
}