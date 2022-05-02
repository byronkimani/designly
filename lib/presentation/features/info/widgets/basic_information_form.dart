import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/core/input_validators.dart';
import 'package:designly/presentation/core/custom_text_field.dart';
import 'package:flutter/material.dart';

class BasicInformationForm extends StatefulWidget {
  const BasicInformationForm({Key? key}) : super(key: key);

  @override
  State<BasicInformationForm> createState() => _BasicInformationFormState();
}

Map<String, dynamic> data = <String, dynamic>{};

class _BasicInformationFormState extends State<BasicInformationForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          CustomTextField(
            labelText: nameText,
            hintText: nameHint,
            onSaved: (String? v) => data['name'] = v.toString().trim(),
            validator: (String? value) => validateName(value.toString()),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            labelText: emailText,
            hintText: emailHintText,
            onSaved: (String? v) => data['email'] = v.toString().trim(),
            validator: (String? value) => validateEmail(value.toString()),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            labelText: phoneNumberText,
            hintText: phoneNumberHintText,
            onSaved: (String? v) => data['phone'] = v.toString().trim(),
            validator: (String? value) => validatePhone(value.toString()),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                submitText,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
