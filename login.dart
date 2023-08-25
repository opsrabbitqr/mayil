import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:mayil_test/screens/home.dart';
import 'package:mayil_test/screens/navibar.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class login extends StatefulWidget {
  @override
  State<login> createState() => loginState();
}

class loginState extends State<login> {
  final formKey = GlobalKey<FormState>();
  bool testVisible = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Dio dioClient = Dio();

  bool isCallingApi = false;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
          children: [
            const SizedBox(
              height: 250,
              width: 250,
              child: Image(
                image: AssetImage("assets/image/logo.png"),
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
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 7),
                        child: TextFormField(
                            onChanged: (name) => email = name,

                            keyboardType: TextInputType.multiline,
                            cursorColor: Colors.green,
                            cursorHeight: 23,
                            controller: usernameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.green),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:
                                    const BorderSide(color: Colors.green),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.green),
                              ),
                              prefixIcon: const Icon(Icons.person_pin,
                                  color: Colors.green),
                              labelText: "REGISTER NUMBER",
                              labelStyle: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                              hintText: "Enter the RegisterNumber",
                            ))),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 7),
                        child: TextFormField(
                          onChanged: (pass) => password = pass,
                          maxLength: 10,
                          keyboardType: TextInputType.visiblePassword,
                          cursorColor: Colors.green,
                          cursorHeight: 23,
                          controller: passwordController,
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
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.green),
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
                        child: GestureDetector(
                            onTap: TryLogin,
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
                              child:  Center(
                                child: isCallingApi
                                    ? const CircularProgressIndicator.adaptive(
                                        backgroundColor: Colors.grey)
                                    : const Text(
                                        'Login',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                              ),
                            ))
                    ) ]),
                )),
          ],)),





        ));
  }

  void TryLogin() async {
    setState(() => isCallingApi = true);
    var response = await dioClient.post(
      'https://tnposter.com/api/p1-user-login',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          'Accept': '*/*',
          'poster_check': 'HTRF35Poster90io@#Xcv100RF',
        },
      ),
      data: {
        "p1_email": email,
        "p1_password": password,
      },
    );

    if (response.data['status'] == 0) {
      setState(() => isCallingApi = false);
      showError(response.data['message']);
      return;
    }

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const navi()));

    //Navigator.of(context).pushReplacement(MaterialPageRoute(
      //builder: (context) {
       // return home();
     // },));
  }

  void showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Login Failed'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            )
          ],
        );
      },
    );
  }
}
