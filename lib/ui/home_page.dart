import 'package:flutter/material.dart';
import 'package:pack_pack_store/ui/detail_view.dart/back_pack_details.dart';

import '../model_helper/boy_backpack.dart';
import '../model_helper/girl_backpack.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text("Back Pack Store"),
        leading: const Icon(Icons.segment),
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
          //   child: Container(
          //     height: 50,
          //     decoration: BoxDecoration(
          //         border: Border.all(color: Colors.purple, width: 2.0),
          //         borderRadius: BorderRadius.circular(5.0)),
          //     child: const TextField(
          //         style: TextStyle(),
          //         decoration: InputDecoration(
          //           border: InputBorder.none,
          //         )),
          //   ),
          // ),

          // title of girl back pack
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 15.0),
                child: Text(
                  "Girl Back Pack",
                  style: TextStyle(color: Colors.black26, fontSize: 16.0),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: backpacklist.length,
                itemBuilder: (context, index) {
                  final data = backpacklist[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BackPackDetails(backpack: data)),
                          );
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)),
                              child: Image.asset(
                                data.image!,
                                fit: BoxFit.cover,
                                height: 180,
                                width: 150,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Text(
                                    data.name!,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white54),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Price : 12000MMK",
                                    style: TextStyle(
                                        color: Colors.white30, fontSize: 16.0),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: IconButton(
                                          color: Colors.white30,
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.favorite_border)),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(right: 0.0),
                                        child: IconButton(
                                          color: Colors.white30,
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.shopping_cart_checkout),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 5.0),
                child: Text(
                  "Men Back Pack",
                  style: TextStyle(color: Colors.black26, fontSize: 16.0),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisExtent: 300,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    final item = list[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BackPackDetails(backpack: item)),
                          );
                        });
                      },
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0)),
                              child: Image.asset(item.image!,
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: double.infinity),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 5.0),
                                  child: Text(
                                    item.name!,
                                    style:
                                        const TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 8.0, left: 5.0, bottom: 0),
                                  child: Text("Price: 10000MMK"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite_border)),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(right: 13.0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.shopping_cart_checkout),
                                    ))
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
