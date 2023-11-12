import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_button.dart';
import 'package:shopapp/components/list_card.dart';
import 'package:shopapp/utils/custom_theme.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final carts = ["1", "2"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.symmetric(vertical: 30),
            itemCount: carts.length,
            itemBuilder: (context, index) {
              return const ListCard();
            },
          ),
          printFooter(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: CustomButtom(
              text: "CHECKOUT",
              onPressed: () {},
              loading: false,
            ),
          )
        ],
      ),
    );
  }

  printFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 2,
            color: CustomTheme.grey,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Text(
                  "Total: ",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Spacer(),
                Text(
                  "\$ Price",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
