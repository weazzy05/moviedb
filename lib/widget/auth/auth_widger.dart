import 'package:flutter/material.dart';
import 'package:moviedb/theme/app_button_style.dart';
class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Войти в свою учётную запись')),
      ),
      body:ListView(
        children: [
        _HeaderAuthWidget()
        ],
      )
    );
  }
}

class _HeaderAuthWidget extends StatelessWidget {
  const _HeaderAuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
        fontSize: 16,
        color: Colors.black
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          _AuthFormWidget(),
          SizedBox(height: 25,),
          Text('Чтобы пользоваться правкой и возможностями рейтинга TMDB, '
              'а также получить персональные рекомендации, необходимо войти в свою учётную запись.'
              'Если у вас нет учётной записи, её регистрация является бесплатной и простой. '
              'Нажмите здесь чтоб начать ',
          style:textStyle
          ),
          SizedBox(height: 5,),
          TextButton(onPressed: () {}, child: Text('Register'), style: AppButtonStyle.linkButton,),
          SizedBox(height: 25,),
          Text('Если Вы зарегистрировались, но не получили письмо, нажмите здесь, для подтверждения.',
              style:textStyle
          ),
          SizedBox(height: 5,),
          TextButton(onPressed: () {}, child: Text('Verify email') , style: AppButtonStyle.linkButton,),
        ],
      ),
    );
  }
}
class _AuthFormWidget extends StatefulWidget {
  const _AuthFormWidget({Key? key}) : super(key: key);

  @override
  _AuthFormWidgetState createState() => _AuthFormWidgetState();
}

class _AuthFormWidgetState extends State<_AuthFormWidget> {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
        color: Color(0xFF212529));
    final inputDecoration =  InputDecoration(
        border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      isCollapsed: true,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Имя пользователя', style: textStyle,),
        SizedBox(height: 5,),
        TextField(
          decoration: inputDecoration
        ),
        SizedBox(height: 20,),
        Text('Пароль', style: textStyle,),
        SizedBox(height: 5,),
        TextField(decoration: inputDecoration,obscureText: true,),
        SizedBox(height: 25,),
        Row(
          children: [
            ElevatedButton(onPressed: () {  }, child: Text('Login'), ),
            SizedBox(width: 30,),
            TextButton(onPressed: (){}, child: Text('Reset password'),)
          ],
        )
      ],
    );
  }
}

