import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 70,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: NAME INPUT
                const CustomFormField(
                  label: 'Full Name',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                // NOTE: EMAIL INPUT
                const CustomFormField(
                  label: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                // NOTE: PASSWORD INPUT
                const CustomFormField(
                  label: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 36),
          CustomTextButton(
            text: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          ),
        ],
      ),
    );
  }
}
