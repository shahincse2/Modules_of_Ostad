import 'package:flutter/material.dart';
import 'package:modules_of_ostad/ui/widget/background_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    // TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BackgroundScreen(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Get Started with',
                  // style: textTheme.displaySmall?.copyWith(
                  //   fontWeight: FontWeight.w600,
                  // ),
                ),
                TextFormField(),
                TextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
