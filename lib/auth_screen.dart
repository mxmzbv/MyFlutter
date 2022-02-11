import 'package:flutter/material.dart';

class AuthScr extends StatelessWidget {
  const AuthScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFFbbbbbb), width: 1));

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 81),
                Container(
                  width: 110,
                  height: 84,
                  child: Image(image: AssetImage('assets/dartLogo.png')),
                ),
                SizedBox(height: 20),
                Text(
                  'Введите логин в виде 10 цифр номера телефона',
                  textAlign: TextAlign.center,
                  style: textStyle18(),
                ),
                SizedBox(height: 20),
                const SizedBox(
                  width: 244,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFeceff1),
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                        labelText: 'Телефон'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 244,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFeceff1),
                        enabledBorder: borderStyle,
                        focusedBorder: borderStyle,
                        labelText: 'Пароль'),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                SizedBox(
                    width: 154,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Войти'),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36))),
                    )),
                SizedBox(height: 40),
                InkWell(
                  child: Text(
                    'Регистрация',
                    style: textStyle18(),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    'Забыли пароль?',
                    style: textStyle18(),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle textStyle18() {
    return const TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6));
  }
}
