import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:modules_of_ostad/app/app_colors.dart';
import 'package:modules_of_ostad/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:modules_of_ostad/features/auth/ui/widgets/app_logo_widget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = '/email_verification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const AppLogoWidget(),
                const SizedBox(
                  height: 24,
                ),
                Text('Welcome Back',
                    style: Theme.of(context).textTheme.titleLarge),
                Text(
                  'Please enter your email address.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Email Address'),
                  validator: (String? value){
                    if(value?.trim().isEmpty ?? true){
                      return 'Enter your email address';
                    }
                    if(!EmailValidator.validate(value!)){
                      return 'Enter your valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    // if(_globalKey.currentState!.validate()){
                    //   print('You have clicked on next button');
                    // }
                    Navigator.pushNamed(context, OtpVerificationScreen.name);
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
