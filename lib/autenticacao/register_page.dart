import 'package:flutter/material.dart';
import 'package:get_fluent/autenticacao/login_page.dart';
import 'package:get_fluent/uteis/paleta_cores.dart';
import 'package:get_fluent/widget/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              campoConfirmarSenha(context),
              const SizedBox(
                height: 16,
              ),
              botaoRegistrar(context),
              const SizedBox(
                height: 16,
              ),
              voltarLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget top(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              child: const Image(
                  image: AssetImage('assets/images/logoBranco.png'))),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Registro',
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

  Widget campoConfirmarSenha(BuildContext context) {
    TextEditingController anyController = TextEditingController();
    return CustomTextField(
      controller: anyController,
      data: Icons.lock_rounded,
      hintText: "Confirm Password",
      showVisibilityIcon: true,
    );
  }

  Widget botaoRegistrar(BuildContext context) {
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
              'Registrar',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

Widget voltarLogin(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    },
    child: const Text.rich(
      TextSpan(
        text: 'Já tem conta? ',
        style: TextStyle(color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: 'Faça Login',
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
