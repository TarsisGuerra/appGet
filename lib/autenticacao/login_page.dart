import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_fluent/autenticacao/register_page.dart';
import 'package:get_fluent/uteis/paleta_cores.dart';
import 'package:get_fluent/widget/custom_button.dart';
import 'package:get_fluent/widget/custom_text_field.dart';

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
              criarConta(context)
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
  TextEditingController anyController = TextEditingController();

  return CustomTextField(
    controller: anyController,
    data: Icons.account_circle_rounded,
    hintText: "Email",
    hintTextColor: Colors.white,
  );
}

Widget campoSenha(BuildContext context) {
  TextEditingController anyController = TextEditingController();
  return CustomTextField(
    controller: anyController,
    data: Icons.lock_rounded,
    hintText: "Password",
    showVisibilityIcon: true,
  );
}

Widget botaoAcesso(BuildContext context) {
  return CustomButton(text: "Login", onTap: () {});
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
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget criarConta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage()),
      );
    },
    child: const Text.rich(
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
    ),
  );
}
