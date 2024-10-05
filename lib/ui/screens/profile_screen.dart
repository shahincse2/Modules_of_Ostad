import 'package:flutter/material.dart';
import 'package:modules_of_ostad/ui/widget/tm_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TMAppBar(isProfileScreenOpen: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48,),

              Text(
                'Update Profile',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 32,),
              _buildProfilePhotoPicker(),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Phone',
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_circle_right_outlined,),),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildProfilePhotoPicker(){
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 55,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: const Text('Photo',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16,),),
          ),
          const SizedBox(width: 8,),
          const Text('Selected Photo'),
        ],
      ),
    );
  }
}
