import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:modules_of_ostad/data/services/network_caller.dart';
import 'package:modules_of_ostad/data/services/network_response.dart';
import 'package:modules_of_ostad/data/utils/urls.dart';
import 'package:modules_of_ostad/ui/screens/forgot_password_email_screen.dart';
import 'package:modules_of_ostad/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:modules_of_ostad/ui/screens/sign_up_screen.dart';
import 'package:modules_of_ostad/ui/utils/app_colors.dart';
import 'package:modules_of_ostad/ui/widget/background_screen.dart';
import 'package:modules_of_ostad/ui/widget/centered_circular_progress_indicator.dart';
import 'package:modules_of_ostad/ui/widget/snack_bar_message.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  bool _inProgress = false;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BackgroundScreen(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Get Started with',
                  style: textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                buildSignInForm(),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: _onTapForgotPasswordButton,
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      buildSignUpSection(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignInForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Email'),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return "Enter your valid email";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _passwordTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Password'),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return "Enter your password";
              }
              if (value!.length <= 6) {
                return "Enter more than 6 characters";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          Visibility(
            visible: !_inProgress,
            replacement: const CenteredCircularProgressIndicator(),
            child: ElevatedButton(
              onPressed: _onTapNextButton,
              child: const Icon(Icons.arrow_circle_right_outlined),
            ),
          ),
        ],
      ),
    );
  }

  void _onTapNextButton() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _signIn();
  }

  Future<void> _signIn() async {
    _inProgress = true;
    setState(() {});
    Map<String, dynamic> requestBody = {
      'email' : _emailTEController.text.trim(),
      'password' : _passwordTEController.text,
    };

    final NetworkResponse response =
        await NetworkCaller.postRequest(url: Urls.login, body: requestBody);
    _inProgress = false;
    setState(() {});
    if (response.isSuccess) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const MainBottomNavBarScreen(),
        ),
        (predicate) => false,
      );
    } else{
        SnackBarMessage(context, response.errorMessage, true);
    }
  }

  void _onTapForgotPasswordButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPasswordEmailScreen(),
      ),
    );
  }

  Widget buildSignUpSection() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
        text: "Don't have an account? ",
        children: [
          TextSpan(
            text: 'Sign Up',
            style: const TextStyle(
              color: AppColors.themeColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = _onTapSignUpButton,
          ),
        ],
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }
}
