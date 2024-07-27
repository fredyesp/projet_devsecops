import 'package:chatssi/composants/user_tile.dart';
import 'package:chatssi/pages/chat_page.dart';
import 'package:chatssi/services/auth/auth_service.dart';
import 'package:chatssi/services/chat/chat_service.dart';
import 'package:flutter/material.dart';
import '../composants/my_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // chat & auth service
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Chat M1 SSI"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
        
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }
  
  // build a list of users except for the current logged in user

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        // Error
        if (snapshot.hasError) {
          return const Text("Erreur");
        }

        // Loading..
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Chargement...");
        }

        // return the list view
        return ListView(
          children: snapshot.data!
            .map<Widget>((userData) => _buildUserListItem(userData, context))
            .toList(),
  
        );
      },
    );
  }
  
  // build individual user list item
  Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context){
    // display all users except current user 
    if (userData["email"] != _authService.getCurrentUser()!.email) {
      return UserTile(
        text: userData["email"],
        onTap: (){
          // navigate to chat page
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => ChatPage(
                receiverEmail: userData["email"],
                receiverID: userData["uid"],
              ),
            ),
          );
        },
      );
    }else{
      return Container();
    }

  } 

}
