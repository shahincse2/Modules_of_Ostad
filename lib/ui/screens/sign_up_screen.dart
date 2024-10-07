import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:modules_of_ostad/data/services/network_caller.dart';
import 'package:modules_of_ostad/data/utils/urls.dart';
import 'package:modules_of_ostad/ui/utils/app_colors.dart';
import 'package:modules_of_ostad/ui/widget/background_screen.dart';
import 'package:modules_of_ostad/ui/widget/snack_bar_message.dart';

import '../../data/services/network_response.dart';
import '../widget/centered_circular_progress_indicator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firsNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
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
                  'Join with us',
                  style: textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                buildSignUpForm(),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: buildHaveAccountSection(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignUpForm() {
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
                return 'Enter your email';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _firsNameTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(hintText: 'First name'),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Enter first name';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _lastNameTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(hintText: 'Last name'),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Enter last name';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _mobileTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Mobile'),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Enter mobile number';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: _passwordTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Password'),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 32),
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
    _signup();
  }

  Future<void> _signup() async {
    _inProgress = true;
    setState(() {});

    Map<String, dynamic> requestBody = {
      "email": _emailTEController.text.trim(),
      "firstName": _firsNameTEController.text.trim(),
      "lastName": _lastNameTEController.text.trim(),
      "mobile": _mobileTEController.text.trim(),
      "password": _passwordTEController.text,
      "photo": "",
    };

    NetworkResponse response = await NetworkCaller.postRequest(
      url: Urls.registration,
      body: requestBody,
    );
    _inProgress = false;
    setState(() {});
    if (response.isSuccess) {
      SnackBarMessage(context, 'Successfully New User Created!');
    } else {
      SnackBarMessage(context, response.errorMessage, true);
    }
  }

  Widget buildHaveAccountSection() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
        text: "Have an account? ",
        children: [
          TextSpan(
            text: 'Sign In',
            style: const TextStyle(
              color: AppColors.themeColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
          ),
        ],
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firsNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
