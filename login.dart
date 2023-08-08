import 'package:flutter/material.dart';
import 'package:mayil_test/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  TextEditingController Username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool testVisible = true;
  var username;
 var userpass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: const Image(
                    image: AssetImage("assets/logo.png"),
                    height: 120,
                    width: 120,
                  ),
                ),
                Container(
                  width: 360,
                  height: 25,
                  color: Colors.transparent,
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Form(
                    key: formKey,
                    child: Center(
                      child: Column(children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 35, vertical: 7),
                            child: TextFormField(
                                maxLength: 15,
                                keyboardType: TextInputType.multiline,
                                cursorColor: Colors.green,
                                cursorHeight: 23,
                                controller: Username,
                                validator: (username) {
                                  if (username!.isEmpty && username != null) {
                                    return "Enter your Username";
                                  }
                                },
                                onSaved: (username) => username = username,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(color: Colors.green),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide: const BorderSide(color: Colors.green),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(color: Colors.green),
                                  ),
                                  prefixIcon:
                                  const Icon(Icons.person_pin, color: Colors.green),
                                  labelText: "USERNAME",
                                  labelStyle: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                  hintText: "Enter the Username",
                                ))),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 35, vertical: 7),
                            child: TextFormField(
                              maxLength:10,
                              keyboardType: TextInputType.visiblePassword,
                              validator: (userpass) {
                                if (userpass!.isEmpty && userpass != null) {
                                  return "Enter your Password";
                                }
                              },
                              onSaved: (userpass) => userpass = userpass,
                              cursorColor: Colors.green,
                              cursorHeight: 23,
                              controller: password,
                              obscureText: testVisible,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(color: Colors.green),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(color: Colors.green),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(color: Colors.green),
                                ),
                                prefixIcon: const Icon(Icons.lock, color: Colors.green),
                                labelText: "PASSWORD",
                                labelStyle: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserret'),
                                hintText: "Enter the Password",
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      testVisible = !testVisible;
                                    });
                                  },
                                  icon: testVisible
                                      ? const Icon(Icons.visibility,
                                      color: Colors.green)
                                      : const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: InkWell(
                              onTap: () {
                                if (formKey.currentState!.validate()) {}
                               Navigator.of(context).push(
                                   MaterialPageRoute(builder: (context) => const home()));
                              },
                              child: Container(
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
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'LOGIN ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            )),
                      ]),
                    )),
              ],
            )));
  }
}
