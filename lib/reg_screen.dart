import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:svg_icon/svg_icon.dart';

class RegScr extends StatelessWidget {
  const RegScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFFbbbbbb), width: 0));

    TextStyle textStyle18() {
      return const TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.6));
    }

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage('assets/icon1.jpg'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Регистрация',
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF5C5C5C)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 1,
                    width: 350,
                    child:
                        Container(color: const Color.fromRGBO(0, 0, 0, 0.6))),
                SizedBox(height: 5),
                SizedBox(
                  height: 42,
                  width: 320,
                  child: Text(
                    'Чтобы зарегестрироваться введите свой номер телефона и почту',
                    style: textStyle18(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Телефон',
                  style: textStyle18(),
                ),
                const SizedBox(
                  height: 3,
                ),
                const SizedBox(
                  width: 244,
                  height: 34,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                      labelText: '+7',
                      floatingLabelBehavior: null,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Почта',
                  style: textStyle18(),
                ),
                const SizedBox(
                  width: 244,
                  height: 34,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Вам придет четырехзначный код,\n который будет вашим паролем',
                  style: textStyle18(),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Изменить пароль можно\n будет в личном кабинете после\n регестрации',
                  style: textStyle18(),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                    width: 154,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Отправить код'),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36))),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
