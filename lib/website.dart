// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'data.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  decoration: BoxDecoration(color: Color(0xff13242b)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('/images/logo.png'),
                        alignment: Alignment.center,
                        height: 70,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        'Intreprindere Individuala Florea Rodica',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Telefon: 0744112871 / 0741697268'),
                          Text('Email: rodicaflorea14@yahoo.ro'),
                        ],
                      ),
                    ],
                  ),
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
                        'sau inscrip??ionate :',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: media.width * 0.5,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: title.length,
                          itemBuilder: (context, index) {
                            return Card(
                                color: Color(colours[index]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          images[index],
                                          width: 200,
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
                                            Text(
                                              title[index],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            Text(description[index]),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ));
                          }),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Bounce(
                            duration: Duration(seconds: 5),
                            infinite: true,
                            child: Text(
                              'Toate produsele prezentate se pot face la comanda, la pret de producator!',
                              style: TextStyle(fontSize: 15),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 150.0),
                          child: Row(
                            children: [
                              IconButton(
                                  iconSize: 30,
                                  onPressed: () {
                                    controller.previousPage(
                                        duration: Duration(
                                          milliseconds: 500,
                                        ),
                                        curve: Curves.easeInOut);
                                  },
                                  icon: Icon(Icons.arrow_back)),
                              SizedBox(
                                height: 300,
                                width: 400,
                                child: PageView.builder(
                                    controller: controller,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: pTitle.length,
                                    itemBuilder: (context, position) {
                                      return Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  child: Image.asset(
                                                    pImages[position],
                                                    width: 500,
                                                    height: 200,
                                                    fit: BoxFit.fill,
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20.0),
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
                                    }),
                              ),
                              IconButton(
                                  iconSize: 30,
                                  onPressed: () {
                                    controller.nextPage(
                                        duration: Duration(
                                          seconds: 1,
                                        ),
                                        curve: Curves.easeInOut);
                                  },
                                  icon: Icon(Icons.arrow_forward)),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
