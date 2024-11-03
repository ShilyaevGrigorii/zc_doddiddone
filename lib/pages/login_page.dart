import 'package:flutter/material.dart';
import 'package:zc_doddiddone/theme/theme.dart';
import 'main_page.dart';

class AuthPage extends StatefulWidget {
  // ignore: use_super_parameters
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    final theme = DoDidDoneTheme.themeData;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: isLogin ? Alignment.topLeft : Alignment.bottomRight,
            end: isLogin ? Alignment.bottomRight : Alignment.topLeft,
            colors: isLogin
                ? [
                    theme.colorScheme.secondary,
                    theme.colorScheme.primary,
                  ]
                : [
                    theme.colorScheme.primary,
                    theme.colorScheme.secondary,
                  ],
            stops: const [0.1, 1.0],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  isLogin ? 'Вход' : 'Регистрация', // Изменяем текст в зависимости от isLogin
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 64),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Почта',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Пароль',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Добавьте отступ
                if (!isLogin) // Отображайте поле только при регистрации
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Повторить пароль',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainPage())); },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: theme.colorScheme.primary,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text(isLogin ? 'Войти' : 'Зарегистрировать'), // Изменяем текст в зависимости от isLogin
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: Text(
                    isLogin ? 'У меня еще нет аккаунта' : 'Уже есть аккаунт? Войти',
                    style: const TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
