import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_button.dart';
import 'package:shopapp/utils/custom_theme.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool addButtonLoad = false;

  void onAddCart() async {
    setState(() {
      addButtonLoad = true;
    });
    setState(() {
      addButtonLoad = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: Image.asset(
                          'asset/img/shoes.jpg', // Ganti dengan path gambar lokalmu
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: Container(
                          decoration: const ShapeDecoration(
                              color: CustomTheme.yellow,
                              shape: CircleBorder(),
                              shadows: [
                                BoxShadow(
                                    color: CustomTheme.grey,
                                    blurRadius: 3,
                                    offset: Offset(1, 3))
                              ]),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: DefaultTextStyle(
                      style: Theme.of(context).textTheme.headlineLarge!,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 22),
                            child: Text("Title"),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: [Text("MRP: "), Text("\$")],
                            ),
                          ),
                          CustomButtom(
                            text: "Add to Cart",
                            onPressed: () {},
                            loading: addButtonLoad,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "About the Items",
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text("The Item Description"),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 35,
              left: 35,
              child: Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
