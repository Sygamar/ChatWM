import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatwme/screens/welcome_screen.dart';
import 'package:chatwme/screens/login_screen.dart';
import 'package:chatwme/screens/registration_screen.dart';
import 'package:chatwme/screens/chat_screen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(ChatWMe());
  await Firebase.initializeApp();
}

class ChatWMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
