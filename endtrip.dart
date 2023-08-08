import 'package:flutter/material.dart';
import 'package:mayil_test/billdetail.dart';
import 'package:mayil_test/dash1.dart';

class end_trip extends StatefulWidget {
  @override
  State<end_trip> createState() => _end_tripState();
}

class _end_tripState extends State<end_trip> {
  String Value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const dash1()));
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text('End Trip',
                      style: TextStyle(
                          fontSize: 24, color: Colors.black, letterSpacing: 1)),
                ],
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(spreadRadius: 2, color: Colors.grey, blurRadius: 4)
                    ]),
                child: const Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Text(
                                'Vijay A',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('9081726354', style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(spreadRadius: 2, color: Colors.grey, blurRadius: 4)
                    ]),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'TN 59 BR 5628',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(spreadRadius: 2, color: Colors.grey, blurRadius: 4)
                    ]),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            Text(
                              'New Bus Stand',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Kacharapalayam',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(spreadRadius: 2, color: Colors.grey, blurRadius: 4)
                    ]),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'Start Km:',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('15630', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(spreadRadius: 2, color: Colors.grey, blurRadius: 4)
                    ]),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'Start Time:', style: TextStyle(fontSize: 20),),

                          Text('16/10/2023,12.30Pm',
                            style: TextStyle(fontSize: 20),
                          ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          labelText: "End KM",
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        const Text(
                          "AC",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          width: 230,
                        ),
                        DropdownButton<String>(
                          items: [
                            const DropdownMenuItem<String>(
                                value: "Yes",
                                child: Center(
                                  child: Text('Yes'),
                                )),
                            const DropdownMenuItem(value: "No",
                                child: Center(
                                  child: Text('No'),
                                )),
                          ],
                          onChanged: (value) => {
                            print(Value.toString()),
                            setState(() {
                              value =Value;
                            })
                          },
                          hint: const Text('Yes'),
                        )])),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      "Extras ",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    DropdownButton<String>(
                      items: [
                        const DropdownMenuItem<String>(
                            value: "Yes",
                            child: Center(
                              child: Text('Yes'),
                            )),
                        const DropdownMenuItem(
                            value: "No",
                            child: Center(
                              child: Text('No'),
                            )),
                      ],
                      onChanged: (value) => {
                        print(Value.toString()),
                        setState(() {
                          value =Value;
                        })
                      },
                      hint: const Text('No'),
                    ),
                  ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 40,
                  width: 350,
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
                          MaterialPageRoute(builder: (context) => const billdetail()));
                    },
                    child: const Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.white, fontSize: 22, letterSpacing: 1.5),
                        )),
                  )),
            ],
          )),
    );
  }
}
