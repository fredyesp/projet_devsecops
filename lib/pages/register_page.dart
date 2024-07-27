import 'package:chatssi/services/auth/auth_service.dart';
import 'package:chatssi/composants/my_button.dart';
import 'package:chatssi/composants/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  //Controle email et mot de passe 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  // Tap to go to register page
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  // Register method
  void register(BuildContext context)  {
    // get auth service
    final _auth = AuthService();


    // check if password and confirm password match
    if (_pwController.text == _confirmController.text){
      try {
        _auth.signUpWithEmailAndPassword(
          _emailController.text,
          _pwController.text
        );
      } catch (e) {
        showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        )
      );
      }
    } 
    // password and confirm password do not match
    else {
      showDialog(
        context: context, 
        builder: (context) => const AlertDialog(
          title: Text("Les mots de passe ne correspondent pas"),
        )
      );
    }
    
  }

  @override
  Widget build(BuildContext context){
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
              'Créer votre compte',
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

            const SizedBox(height: 15),

            // password textfield
            MyTextField(
              hintText: "Confirmer le mot de passe",
              obscureText: true,
              controller: _confirmController,
            ),

            const SizedBox(height: 30),

            // login button
            MyButton(
              text: "Inscription",
              onTap: ()=>register(context),
            ),

            const SizedBox(height: 15),

            // register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Compte déjà créé ?  ",
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Connectez-vous",
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