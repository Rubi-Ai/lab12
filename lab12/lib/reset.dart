import 'package:flutter/material.dart';
import 'api_service.dart';

class ResetPasswordPage extends StatelessWidget {
  final ApiService apiService = ApiService();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reset Password')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              controller: emailController,
            ),
            ElevatedButton(
              onPressed: () => apiService.resetPassword(emailController.text),
              child: Text('Reset Password'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Remember your password? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
