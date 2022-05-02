import 'package:designly/business_logic/core/input_validators.dart';
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
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'name',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1.5),
              ),
            ),
            onSaved: (String? v) => data['name'] = v.toString().trim(),
            validator: (String? value) => validateName(value.toString()),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'email',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1.5),
              ),
            ),
            onSaved: (String? v) => data['email'] = v.toString().trim(),
            validator: (String? value) => validateEmail(value.toString()),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'phone number',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1.5),
              ),
            ),
            onSaved: (String? v) => data['email'] = v.toString().trim(),
            validator: (String? value) => validateEmail(value.toString()),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}
