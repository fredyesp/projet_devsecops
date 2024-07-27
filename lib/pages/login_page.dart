import 'package:chatssi/services/auth/auth_service.dart';
import 'package:chatssi/composants/my_button.dart';
import 'package:chatssi/composants/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  //Controle email et mot de passe 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  // Tap to go to register page
  final void Function()? onTap;



  LoginPage({super.key, required this.onTap});

  // Login method
  void login(BuildContext context) async {
    // auth service 
    final authService = AuthService();

    // try login
    try {
      await authService.signInWithEmailAndPassword(
        _emailController.text,
        _pwController.text
      );
    } 
    // catch any errors
    catch (e) {
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        )
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50),

            // welcome back message
            Text(
              'Bienvenue dans le Chat M1 SSI!',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            
            
            const SizedBox(height: 25),
            
            // email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 15),

            // password textfield
            MyTextField(
              hintText: "Mot de passe",
              obscureText: true,
              controller: _pwController,
            ),

            const SizedBox(height: 30),

            // login button
            MyButton(
              text: "Se connecter",
              onTap: ()=>login(context),
            ),

            const SizedBox(height: 15),

            // register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pas de compte ?  ",
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Créer un compte",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}