import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/model/TravelModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 50;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //head part
            Container(
              color: Colors.white,
              width: double.infinity,
              height: size.height / 1.8,
              child: Stack(
                children: [
                  //chosen destination picture
                  InkWell(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: double.infinity,
                      height: size.height / 2.1,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          image: DecorationImage(
                            image: AssetImage(travelList[_selectedIndex].image),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  //head icons
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                travelList[_selectedIndex].liked = !travelList[_selectedIndex].liked;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(microseconds: 500),
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(136, 158, 158, 158)),
                              child: travelList[_selectedIndex].liked == false
                                  ? const Icon(CupertinoIcons.heart)
                                  : const Icon(
                                      CupertinoIcons.heart_fill,
                                      color: Colors.red,
                                    ),
                            ),
                          ),
                          InkWell(
                            onTap: () => SystemNavigator.pop(),
                            child: AnimatedContainer(
                              duration: Duration(microseconds: 500),
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(136, 158, 158, 158)),
                              child: const Icon(CupertinoIcons.power),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //images list
                  Positioned(
                    right: 0,
                    top: 110,
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: 90,
                        height: size.height / 3,
                        child: ListView.builder(
                          itemCount: travelList.length,
                          itemBuilder: (context, index) {
                            return imageItems(index);
                          },
                        ),
                      ),
                    ),
                  ),
                  //name and place
                  Positioned(
                    bottom: 80,
                    left: size.width / 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedIndex].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.placemark_fill,
                              color: Colors.white,
                              size: 16,
                            ),
                            Text(
                              travelList[_selectedIndex].location,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //details part
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter, 
                children: [
                  Positioned(
                    bottom: 10,
                    child: Column(
                      children: [
                        //cards
                        Container(
                          width: size.width / 10 * 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //distance
                              Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Color.fromARGB(40, 0, 0, 0),
                                          width: 1)
                                      ),
                                  child: Container(
                                    height: 85,
                                    width: 85,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text(
                                          "Distance",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                            "${travelList[_selectedIndex].distance} Km",
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 202, 222),
                                                fontSize: 20)
                                            ),
                                        const SizedBox()
                                      ],
                                    ),
                                  )),
                              //Temp
                              Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Color.fromARGB(40, 0, 0, 0),
                                          width: 1)
                                      ),
                                  child: Container(
                                    height: 85,
                                    width: 85,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text(
                                          "Temp",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(
                                            "${travelList[_selectedIndex].temp}\u00b0 C",
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 202, 222),
                                                fontSize: 20)
                                            ),
                                        const SizedBox()
                                      ],
                                    ),
                                  )),
                              //Rating
                              Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Color.fromARGB(40, 0, 0, 0),
                                          width: 1)),
                                  child: Container(
                                    height: 85,
                                    width: 85,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text(
                                          "Rating",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        Text(travelList[_selectedIndex].rating,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 120, 202, 222),
                                                fontSize: 20)),
                                        const SizedBox()
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        //description title
                        Container(
                          width: size.width / 10 * 8,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Description",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ),
                        //description
                        Container(
                          height: size.height / 9,
                          width: size.width / 10 * 8,
                          child: SingleChildScrollView(
                            child: ExpandableText(
                              travelList[_selectedIndex].description,
                              style: const TextStyle(fontSize: 12),
                              expandText: "read more",
                              collapseText: "read less",
                              maxLines: 5,
                              linkColor: const Color.fromARGB(255, 120, 202, 222),
                            ),
                          ),
                        ),
                        //price and sell botton
                        Container(
                          width: size.width / 10 * 8,
                          height: size.height / 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //price
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Total Price",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "\$${travelList[_selectedIndex].price}",
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              //button
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.black),
                                child: const Icon(
                                  CupertinoIcons.greaterthan,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),              
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageItems(int index) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(travelList[index].image),
                  fit: BoxFit.fill,
                )),
            width: _selectedIndex == index ? imageSize + 15 : imageSize,
            height: _selectedIndex == index ? imageSize + 15 : imageSize,
            duration: const Duration(milliseconds: 500),
          ),
        ),
      ),
    ]);
  }
}
