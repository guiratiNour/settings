import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  String newPassword = '';
  String confirmPassword = '';
  bool showError = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/changePasswordImage.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 20),
            _buildPasswordTextField(
              labelText: 'New Password',
              onChanged: (value) {
                setState(() {
                  newPassword = value;
                  showError = false;
                });
              },
            ),
            SizedBox(height: 20),
            _buildPasswordTextField(
              labelText: 'Confirm New Password',
              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                  showError = false;
                });
              },
            ),
            SizedBox(height: 20),
            showError
                ? Padding(
                    padding: const EdgeInsets.only(left: 48.0),
                    child: Text(
                      'New Password and Confirm New Password do not match',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (newPassword == confirmPassword) {
                    // Logique pour changer le mot de passe
                    print('Password changed successfully');
                  } else {
                    setState(() {
                      showError = true;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  onPrimary: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordTextField({
    required String labelText,
    required ValueChanged<String> onChanged,
  }) {
    return TextFormField(
      obscureText:
          !isPasswordVisible, // Masquer le texte si isPasswordVisible est faux
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChangePasswordPage(),
  ));
}
