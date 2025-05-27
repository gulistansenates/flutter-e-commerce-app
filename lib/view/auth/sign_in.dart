import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/view/auth/register.dart';
import 'package:e_commerce_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Constant.dark,
                  ),
                ),
                const SizedBox(height: 32),
                _inputField("Email", emailController),
                const SizedBox(height: 16),
                _inputField("Password", passwordController, isPassword: true),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Constant.dark),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constant.yellow,
                    foregroundColor: Constant.dark,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Grock.toRemove(const Home());
                  },
                  child: const Text("Sign In"),
                ),
                const SizedBox(height: 16),
                const Text("or", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/ic_google.png",
                    width: 24,
                    height: 24,
                  ),
                  label: const Text("Sign In with Google"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    side: BorderSide(color: Constant.gray),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                TextButton(
                  onPressed: () => Grock.to(const RegisterPage()),
                  child: Text(
                    "Don’t have an account? Sign Up",
                    style: TextStyle(color: Constant.dark),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField(
    String label,
    TextEditingController controller, {
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        fillColor: Constant.white,
        filled: true,
      ),
    );
  }
}
