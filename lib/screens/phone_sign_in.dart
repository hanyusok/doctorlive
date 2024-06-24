import 'package:doctorlive/supabase_auth_ui/components/supa_phone_auth.dart';
import 'package:doctorlive/supabase_auth_ui/utils/supa_auth_action.dart';
import 'package:flutter/material.dart';


import 'constants.dart';

class PhoneSignIn extends StatelessWidget {
  const PhoneSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Phone Sign In'),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SupaPhoneAuth(
              authAction: SupaAuthAction.signIn,
              onSuccess: (response) {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            TextButton(
              child: const Text(
                'Don\'t have an account? Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
