import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('注册')),
        body: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: ListView(children: <Widget>[
            const TextField(
                decoration:
                    InputDecoration(labelText: '用户名', hintText: '请输入用户名')),
            const Padding(padding: EdgeInsets.all(10)),
            const TextField(
                obscureText: true,
                decoration:
                    InputDecoration(labelText: '密码', hintText: '请输入密码')),
            const Padding(padding: EdgeInsets.all(10)),
            const TextField(
                obscureText: true,
                decoration:
                    InputDecoration(labelText: '确认密码', hintText: '请输入确认密码')),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                child: const Text('注册'),
                onPressed: () {
                  // TODO 登录
                }),
            const Padding(padding: EdgeInsets.all(10)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              const Text('已有账号！'),
              TextButton(
                  child: const Text('登录'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  })
            ])
          ]),
        ));
  }
}
