import 'package:doctorlive/supabase_auth_ui/components/supa_verify_phone.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Verify Phone'),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SupaVerifyPhone(
              onSuccess: (response) {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            TextButton(
              child: const Text(
                'Forgot Password? Click here',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/forgot_password');
              },
            ),
            TextButton(
              child: const Text(
                'Take me back to Sign Up',
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
