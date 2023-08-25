import 'package:flutter/material.dart';
import 'package:mayil_test/screens/billdetail.dart';
import 'package:mayil_test/screens/home.dart';
import 'package:intl/intl.dart';



class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {

  TextEditingController dateController = TextEditingController();



  @override

  void initState(){
    super.initState();
    dateController.text =" ";
  }


  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    icon: const Icon(Icons.arrow_back_outlined),
                    color: Colors.black,iconSize: 30,
                  ),
                  const Text(
                    'Report',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),

              Form(
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text('VEHICLE',
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold)),
                              ),

                              TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.green),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: const BorderSide(
                                          color: Colors.green),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.green),
                                    ),
                                    prefixIcon: const Icon(
                                        Icons.person_pin, color: Colors.green),
                                    hintText: "Enter the Register No",
                                  ),


                              ),

                              const SizedBox(
                                height: 15,
                              ),

                              const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text('DATE',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                              TextFormField(
                                controller: dateController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.green),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: const BorderSide(
                                          color: Colors.green),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.green),
                                    ),
                                    prefixIcon: const Icon(
                                        Icons.date_range, color: Colors.green),
                                    hintText: "Enter the Date",
                                  ),

                                readOnly: true,
                                onTap: () async{
                                  DateTime? pickedDate= await showDatePicker(context: context,
                                      initialDate: DateTime.now(),
                                      firstDate:DateTime(2000),
                                      lastDate: DateTime(2101));
                                  if(pickedDate != null){
                                    String formattedDate = DateFormat(
                                        "dd/MM/yyyy").format(pickedDate);

                                    setState(() {
                                      dateController.text=formattedDate.toString();
                                    });
                                  }else{
                                    print('not select');
                                  }

                                },

                              ),


                            ])),
                  ])),
              const SizedBox(height: 20,),
              Container(
                height: 40,
                width: 360,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.green,
                          Colors.lightGreenAccent,
                        ]),
                    borderRadius: BorderRadius.circular(20)),


                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (context) => const billdetail()));
                  },
                  child: const Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            letterSpacing: 1.5),
                      )),
                ),),
              const SizedBox(height: 15),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Bookings:',
                      style: TextStyle(fontSize: 18, fontFamily: 'Montserret'),
                    ),

                    Text(
                      '0',
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
              const SizedBox(height: 15),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Total Amount:',
                      style: TextStyle(fontSize: 18),
                    ),

                    Text(
                      '0',
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
              const SizedBox(height: 15),

              Container(
                  height: 40,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1, // Border thickness
                      ),

                      borderRadius: BorderRadius.circular(20)),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(
                              builder: (context) => const billdetail()));
                    },
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 140.0),
                          child: Icon(Icons.map),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Trip',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                letterSpacing: 1.5),
                          ),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 360,
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: const Column(

                    children: [
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Register No:',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Montserret'),
                                ),
                                Text('TN59BR5628',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ])),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Customer:',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text('vijay',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Montserret')),
                              ])),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address:',
                              style: TextStyle(fontSize: 18),
                            ),
                            Column(children: [
                              Text('New Bus Stand',
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text('kacharapalayam',
                                  style: TextStyle(fontSize: 18)),
                            ]),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'contact no:',
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Montserret'),
                              ),
                              Text('9081726354',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Montserret')),
                            ]),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text('Amount:',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),

                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text('Timing:',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserret')),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )

            ]))));
  }
}