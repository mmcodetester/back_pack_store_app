import 'package:flutter/material.dart';
import 'package:pack_pack_store/model/back_pack.dart';

class BackPackDetails extends StatelessWidget {
  const BackPackDetails({Key? key, required this.backpack}) : super(key: key);
  final BackPack backpack;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart, size: 30)),
          )
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),

        //title: Text(backpack.name!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            backpack.name!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Price\n10000MMK",
                            style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                          ),
                        )),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            child: Image.asset(
                          backpack.image!,
                          height: 160,
                        ))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
