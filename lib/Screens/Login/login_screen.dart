import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lo_menu/Screens/Menu/menu_screen.dart';
import 'package:lo_menu/Screens/Profile/profile_page.dart';
import 'package:lo_menu/Screens/widgets/header_widget.dart';
import 'package:lo_menu/common/theme_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 200;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
              ),
              SafeArea(
                  child: Container(
                //Formulário de Login
                child: Column(
                  children: [
                    const Text(
                      'Bem-vindo ao Lo Menu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Acesse sua conta',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 30.0),
                    Form(
                        child: Column(
                      children: [
                        TextField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Usuário', 'Digite seu usuário')),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: ThemeHelper()
                              .textInputDecoration('Senha', 'Digite sua senha'),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                            alignment: Alignment.topRight,
                            child: Text('Esqueceu a senha?')),
                        Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  'Entrar'.toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                //Deste botão vai levar, inicialmente, para o Perfil do Usuário.
                                //Mas depois vai ser pra ir direto pro menu principal.

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MenuScreen()));
                              },
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text('Não possui conta? Criar Uma'))
                      ],
                    )),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
