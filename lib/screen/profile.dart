import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 20,
            ),
            child: Text(
              "Hi There!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          CustomButtom(
            text: "Sign Out",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
