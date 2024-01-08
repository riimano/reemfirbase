import 'package:firbaseproject/app/core/extensions/build_context_extension.dart';
import 'package:firbaseproject/app/modules/auth/wedgets/my_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(context.translate.register),
        ),
        body: Column(
          children: [
            MyFormFields(formKey: formKey),
          ],
        ));
  }
}
