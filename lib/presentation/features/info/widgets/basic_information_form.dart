import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/core/input_validators.dart';
import 'package:designly/business_logic/cubits/bottom_navigation_cubit.dart';
import 'package:designly/business_logic/cubits/user_cubit.dart';
import 'package:designly/business_logic/router/routes.dart';
import 'package:designly/presentation/core/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      key: formKey,
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
            onSaved: (String? v) => data['phoneNumber'] = v.toString().trim(),
            validator: (String? value) => validatePhone(value.toString()),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context
                      .read<UserCubit>()
                      .updateUserState(userState: UserState.fromJson(data));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: const Color(0xff90ee90).withOpacity(0.9),
                      content: Row(
                        children: const <Widget>[
                          Icon(Icons.check, color: Colors.white),
                          SizedBox(width: 10),
                          Text(informationSubmitted)
                        ],
                      ),
                    ),
                  );
                  await Future<dynamic>.delayed(const Duration(seconds: 5));
                  context.read<BottomNavigationCubit>().updateCurrentIndex(1);
                  Navigator.of(context).pushNamed(designPageRoute);
                }
              },
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
