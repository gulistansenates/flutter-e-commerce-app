import 'package:e_commerce_app/constant/constant.dart';
import 'package:e_commerce_app/view/auth/sign_in.dart';
import 'package:e_commerce_app/view/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:e_commerce_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grock/grock.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isLoading = false;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpProcess) {
          setState(() {
            isLoading = true;
            errorText = null;
          });
        } else if (state is SignUpSuccess) {
          setState(() {
            isLoading = false;
          });
          Grock.toRemove(const Home());
        } else if (state is SignUpFailure) {
          setState(() {
            isLoading = false;
            errorText = state.error;
          });
        }
      },
      child: Scaffold(
        backgroundColor: Constant.darkWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Constant.dark,
                      ),
                    ),
                    const SizedBox(height: 32),
                    _inputField(
                      "Email",
                      emailController,
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 16),
                    _inputField(
                      "Password",
                      passwordController,
                      isPassword: true,
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 16),
                    _inputField(
                      "Confirm Password",
                      confirmPasswordController,
                      isPassword: true,
                      validator: (val) {
                        if (val != passwordController.text) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                    ),
                    if (errorText != null) ...[
                      const SizedBox(height: 16),
                      Text(
                        errorText!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                    const SizedBox(height: 32),
                    isLoading
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constant.yellow,
                            foregroundColor: Constant.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<SignUpBloc>().add(
                                SignUpRequired(
                                  emailController.text,
                                  passwordController.text,
                                  confirmPasswordController.text,
                                ),
                              );
                            }
                          },
                          child: const Text("Sign Up"),
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
                      label: const Text("Sign Up with Google"),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48),
                        side: BorderSide(color: Constant.gray),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () => Grock.to(const SignInPage()),
                      child: Text(
                        "Already have an account? Sign In",
                        style: TextStyle(color: Constant.dark),
                      ),
                    ),
                  ],
                ),
              ),
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
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        fillColor: Constant.white,
        filled: true,
      ),
    );
  }

  String? _validateEmail(String? val) {
    if (val == null || val.isEmpty) {
      return "Please enter your email";
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(val)) {
      return "Please enter a valid email";
    }
    return null;
  }

  String? _validatePassword(String? val) {
    if (val == null || val.isEmpty) {
      return "Please enter your password";
    } else if (val.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }
}
