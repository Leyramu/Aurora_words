import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('登录')),
        body: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: ListView(children: <Widget>[
            const TextField(
                decoration:
                    InputDecoration(labelText: '用户名', hintText: '请输入用户名')),
            const Padding(padding: EdgeInsets.all(10)),
            TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    suffixIcon: IconButton(
                      icon: Icon(showPassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ))),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                child: const Text('登录'),
                onPressed: () {
                  // TODO 登录
                }),
            const Padding(padding: EdgeInsets.all(10)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              const Text('没有账号？'),
              TextButton(
                  child: const Text('注册'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'register');
                  })
            ])
          ]),
        ));
  }
}
