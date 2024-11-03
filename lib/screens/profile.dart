import 'package:flutter/material.dart';
import 'package:zc_doddiddone/pages/login_page.dart';
import 'package:zc_doddiddone/theme/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEmailVerified = false; // Замените на реальную проверку почты

  @override
  Widget build(BuildContext context) {
    final theme = DoDidDoneTheme.themeData;
    return Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/_1.png'), // Замените на путь к вашему аватару
              ),
              const SizedBox(height: 32),
              Text(
                'user@example.com', // Замените на почту пользователя
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              if (!isEmailVerified) ...[
                ElevatedButton(
                  onPressed: () {
                    // Добавьте логику отправки запроса подтверждения почты
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.secondary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Подтвердить почту'),
                ),
                const SizedBox(height: 16),
              ],
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return const AuthPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 16),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Выйти'),
              ),
            ],
          ),
        
      
    );
  }
}
