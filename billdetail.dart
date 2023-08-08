import 'package:flutter/material.dart';

import 'package:mayil_test/dash1.dart';
import 'package:mayil_test/endtrip.dart';
void main(){
  runApp(MaterialApp(
    home: billdetail(),
  ));
}

class billdetail extends StatefulWidget {
  const billdetail();

  @override
  State<billdetail> createState() => billdetailState();
}

class billdetailState extends State<billdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
              Row(
                  children: [


                    Padding(
                        padding: const EdgeInsets.only(top: 40),

                        child:IconButton(
                          icon:Icon(Icons.arrow_back,),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => end_trip()));
                          },
                        )
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 40,right: 50),

                        child: Text('Bill Details',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1))),
                    SizedBox(width:25),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,right: 20),
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.green,
                                  Colors.lightGreenAccent,
                                ]),
                            borderRadius: BorderRadius.circular(20)),
                        child:InkWell(
                            onTap:(){},
                            child:const Row(children:[
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.share,color: Colors.white,),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(fontSize: 18,color: Colors.white),
                              ),
                            ])
                        ),),
                    )
                  ]),

              const SizedBox(
                height: 10,
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Trip Details',
                    style: TextStyle(
                        color: Colors.lightGreen.shade600,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                  height: 480,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: const Column(children: [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Customer Id:',
                            style:
                            TextStyle(fontSize: 18, fontFamily: 'Montserret'),
                          ),
                          Text('Vijay A   ',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'Montserret')),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'contact no:',
                            style:
                            TextStyle(fontSize: 18, fontFamily: 'Montserret'),
                          ),
                          Text('9081726354',
                              style: TextStyle(
                                fontSize: 18,)),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Flexible(
                      flex:2,
                      child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text('Location:',
                                  style: TextStyle(
                                    fontSize: 18, ),
                                ),
                                Column(
                                  children: [
                                    Text("32/7,Main Road,",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text("Kacharapalayam",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                    Text("Kallakurichi Dt",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ])),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date:',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text('16/10/2023 ',
                              style: TextStyle(
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Starting Time',
                                  style: TextStyle(
                                      fontSize: 16)),
                              Text('12.30 PM',
                                  style: TextStyle(
                                      fontSize: 16)),
                            ])),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ending Time',
                                  style: TextStyle(
                                      fontSize: 16)),
                              Text('4.30 PM',
                                  style: TextStyle(
                                      fontSize: 16)),
                            ])),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Start KM',
                                  style: TextStyle(
                                      fontSize: 16)),
                              Text('15630 KM',
                                  style: TextStyle(
                                      fontSize: 16)),
                            ])),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('End KM',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Montserret')),
                              Text('15900 KM',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Montserret')),
                            ])),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total KM',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Montserret')),
                              Text('270 KM',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Montserret')),
                            ])),
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Bill Details",
                        style: TextStyle(
                            color: Colors.lightGreen.shade600,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ))),
              Container(
                height: 360,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: const Column(children: [
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Basic 20KM',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('370.00',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('100 KM',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('1200.00',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Extra Waiting Time',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('0.00',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('AC Charge',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('0.00',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Hills Charge',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('0.00',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Discount',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('0.00',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Driver Beta',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('300 KM',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Amount',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                            Text('1870',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ])),
                ]),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: const InkWell(
                      child: Center(
                          child: Text('Download PDF',style: TextStyle(
                              fontSize: 18,color: Colors.white,letterSpacing: 1),)),
                    )),
              ),
              const SizedBox(height: 20,)
            ])));
  }
}
