// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'data.dart';
import 'package:animate_do/animate_do.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get screen size
    var media = MediaQuery.of(context).size;

    //Controller
    PageController controller = PageController();

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('/images/logo.png'),
                      alignment: Alignment.center,
                      height: 70,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    SlideInRight(
                      duration: Duration(seconds: 2),
                      child: Text(
                        'I.I. Florea Rodica',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Image(
                    image: AssetImage('/images/decoratie.png'),
                    alignment: Alignment.center,
                    height: 7,
                    width: media.width,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          Container(
            decoration:
                BoxDecoration(color: Colors.lightGreen.withOpacity(0.2)),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: SlideInLeft(
                      duration: Duration(seconds: 2),
                      child: Text(
                        'Producem si comercializam diferite folii / benzi avertizoare '
                        'sau inscripţionate :',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(
                  width: media.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: title.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 130,
                          child: Card(
                              color: Color(colours[index]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        images[index],
                                        width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Pulse(
                                            duration: Duration(seconds: 2),
                                            child: Text(
                                              title[index],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ),
                                          FadeIn(
                                            duration: Duration(seconds: 2),
                                            child: Text(
                                              description[index],
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            iconSize: 30,
                            onPressed: () {
                              controller.previousPage(
                                  duration: Duration(
                                    milliseconds: 500,
                                  ),
                                  curve: Curves.easeInOut);
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                          width: 300,
                          height: 300,
                          child: PageView.builder(
                              controller: controller,
                              scrollDirection: Axis.horizontal,
                              itemCount: pTitle.length,
                              itemBuilder: (context, position) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Column(children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                        child: Image.asset(
                                          pImages[position],
                                          width: 300,
                                          height: 200,
                                          fit: BoxFit.fill,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Text(
                                        pTitle[position],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                );
                              })),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            iconSize: 30,
                            onPressed: () {
                              controller.nextPage(
                                  duration: Duration(
                                    seconds: 1,
                                  ),
                                  curve: Curves.easeInOut);
                            },
                            icon: Icon(Icons.arrow_forward)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Pulse(
                    infinite: true,
                    duration: Duration(seconds: 3),
                    child: Text(
                      'Toate produsele prezentate sunt la pret de producator!',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Va multumim!',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Image(
                      image: AssetImage('/images/decoratie.png'),
                      alignment: Alignment.center,
                      height: 7,
                      width: media.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Telefon: 0744112871 / 0741697268',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Email: rodicaflorea14@yahoo.ro',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
