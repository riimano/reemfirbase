import 'package:firbaseproject/app/core/extensions/build_context_extension.dart';
import 'package:firbaseproject/app/modules/auth/domain/helper/auth_validators.dart';
import 'package:firbaseproject/app/modules/auth/wedgets/my_textform.dart';
import 'package:flutter/material.dart';

class MyFormFields extends StatefulWidget {
  const MyFormFields({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  State<MyFormFields> createState() => _MyFormFieldsState();
}

class _MyFormFieldsState extends State<MyFormFields> {
  final _authValidator = AuthValidators();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  final FocusNode userNameNode = FocusNode();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    userNameNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              MyTextFormField(
                textEditingController: emailController,
                myfocusNode: emailNode,
                myTextInputAction: TextInputAction.next,
                labelText: context.translate.email,
                myprefixIcon: const Icon(Icons.email),
                obscureText: false,
                onChanged: null,
                validator: (value) {
                  return _authValidator.emailValidator(value);
                },
              ),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),
              MyTextFormField(
                textEditingController: userNameController,
                myfocusNode: userNameNode,
                myTextInputAction: TextInputAction.next,
                labelText: context.translate.userName,
                myprefixIcon: const Icon(Icons.person),
                obscureText: false,
                onChanged: null,
                validator: (value) {
                  return _authValidator.userNameValidator(value);
                },
              ),
              SizedBox(
                height: context.screenHeight * 0.03,
              ),
              MyTextFormField(
                textEditingController: passwordController,
                myfocusNode: passwordNode,
                myTextInputAction: TextInputAction.next,
                labelText: context.translate.password,
                myprefixIcon: const Icon(Icons.password),
                obscureText: true,
                onChanged: null,
                suffixIcon: const Icon(Icons.remove_red_eye),
                validator: (value) {
                  return _authValidator.passwordVlidator(value);
                },
              ),
              SizedBox(
                height: context.screenHeight * 0.03,
              )
            ],
          ),
        ));
  }
}
