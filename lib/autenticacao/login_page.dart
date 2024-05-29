import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_fluent/uteis/paleta_cores.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaCores.azulGet,
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: SingleChildScrollView(
          child: Column(
            children: [
              top(context),
              const SizedBox(
                height: 16,
              ),
              campoEmail(context),
              const SizedBox(
                height: 16,
              ),
              campoSenha(context),
              const SizedBox(
                height: 16,
              ),
              botaoAcesso(context),
              const SizedBox(
                height: 16,
              ),
              loginGoogle(),
              const SizedBox(
                height: 16,
              ),
              criarConta()
            ],
          ),
        ),
      ),
    );
  }
}

Widget top(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Column(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.width * 0.2,
            child:
                const Image(image: AssetImage('assets/images/logoBranco.png'))),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Login',
          style: TextStyle(fontSize: 24, color: Colors.white),
        )
      ],
    ),
  );
}

Widget campoEmail(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          padding: const EdgeInsets.all(5),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 1)),
          child: const TextField(
            decoration: InputDecoration(
              hintStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
              hintText: 'Email',
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
            ),
          )));
}

Widget campoSenha(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      padding: const EdgeInsets.all(5),
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 1)),
      child: const TextField(
          decoration: InputDecoration(
        hintStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        hintText: 'Password',
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.lock_rounded,
          color: Colors.white,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: Colors.white,
        ),
      )),
    ),
  );
}

Widget botaoAcesso(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFF0693F1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Acessar',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget loginGoogle() {
  return const Text.rich(
    TextSpan(
      text: 'Faça Login com ',
      style: TextStyle(color: Colors.white),
      children: <TextSpan>[
        TextSpan(
          text: 'Google',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget criarConta() {
  return const Text.rich(
    TextSpan(
      text: 'Não tem conta? ',
      style: TextStyle(color: Colors.white),
      children: <TextSpan>[
        TextSpan(
          text: 'Registre-se',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
