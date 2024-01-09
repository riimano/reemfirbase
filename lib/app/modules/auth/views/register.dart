import 'package:firbaseproject/app/config/themes/my_colors.dart';
import 'package:firbaseproject/app/core/extensions/build_context_extension.dart';
import 'package:firbaseproject/app/modules/auth/wedgets/my_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: MyColors.primary_500,
          title: Text(
            context.translate.register,
            style: context.textTheme.headlineMedium?.copyWith(
              fontSize: 16,
              color: MyColors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAuthForm(formKey: formKey),
              SizedBox(
                height: context.screenHeight * 0.04,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    context.translate.googleLogin,
                    style: context.textTheme.bodyMedium,
                  ))
            ],
          ),
        ));
  }
}
