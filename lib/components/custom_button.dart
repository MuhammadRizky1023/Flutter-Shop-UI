import 'package:flutter/material.dart';
import 'package:shopapp/components/loader.dart';
import 'package:shopapp/utils/custom_theme.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool loading;
  const CustomButtom(
      {super.key,
      required this.text,
      required this.onPressed,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: CustomTheme.blue,
          boxShadow: CustomTheme.buttonShadow),
      child: MaterialButton(
        onPressed: loading ? null : onPressed,
        child: loading
            ? const Loader()
            : Text(
                text,
                style: Theme.of(context).textTheme.titleSmall,
              ),
      ),
    );
  }
}
