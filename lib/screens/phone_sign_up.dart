import 'package:doctorlive/supabase_auth_ui/components/supa_phone_auth.dart';
import 'package:doctorlive/supabase_auth_ui/utils/supa_auth_action.dart';
import 'package:flutter/material.dart';


import 'constants.dart';

class PhoneSignUp extends StatelessWidget {
  const PhoneSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Phone Sign Up'),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SupaPhoneAuth(
              authAction: SupaAuthAction.signUp,
              onSuccess: (response) {
                Navigator.of(context).pushReplacementNamed('/verify_phone');
              },
            ),
            TextButton(
              child: const Text(
                'Already have an account? Sign In',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/sign_in');
              },
            ),
          ],
        ),
      ),
    );
  }
}
