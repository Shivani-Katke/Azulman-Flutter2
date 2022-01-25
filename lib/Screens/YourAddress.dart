import 'package:demo_azulmanproject/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'NavBar.dart';

class YourAddress extends StatefulWidget {
  @override
  _YourAddressState createState() => _YourAddressState();
}
class _YourAddressState extends State<YourAddress> {


  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height / 5.4;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: SafeArea(
        child: Container(
          width: 175.0,
          child: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              ListTiles(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: 'Be a Technician',
                onTap: () {},
              ),
              Container(
                child: Column(
                  children: [
                    Divider(),
                    ListTiles(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: 'Current Orders',
                      onTap: () {},
                    ),
                    ListTiles(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: 'Past Orders',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Divider(),
                      ListTiles(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: 'Preferences',
                        onTap: () {},
                      ),
                      ListTiles(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: 'Terms',
                        onTap: () {},
                      ),
                      ListTiles(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        onTap: () {},
                        title: 'How It Works',
                      ),
                      ListTiles(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: 'Privacy',
                        onTap: () {},
                      ),
                      ListTiles(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: 'AboutAzul',
                        onTap: () {},
                      ),
                      ListTiles(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: 'Contact Us',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight,
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 45,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color(0xff967d51),
                    ),
                    child: TextButton(
                      style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'LOGOUT',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            height: 160,
            child: Stack(
              children: [
                Row(
                  children: [
                    // Icon(Icons.menu,
                    // color: Colors.white,
                    // ),
                    Container(
                      color: const Color(0xFF967d51),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: const Align(
                        alignment: Alignment(0.9, 0.5),
                        child: Text(
                          'Nagpur',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).devicePixelRatio * 12,
                  left: SizeConfig.screenWidth! / 2.5,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: kAzulmanLogo,
                  ),
                ),
                 // Positioned(
                 //  top: 50,
                 //  left: 25,
                  // child: GestureDetector(
                  //   onTap: () {
                  //     Container(
                  //       width: 50,
                  //     );
                  //   },
                  //   child: IconButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         Scaffold.of(context).openDrawer();
                  //       });
                  //
                  //     },
                  //     icon: Icon(Icons.menu,
                  //       color: Colors.white,
                  //     ),
                  //   ),

                //),
              ],
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, right: 20.0, left: 30.0, bottom: 20.0),
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff967d51),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Phone Number',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                            //enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF1A237E),
                              width: 2.0,
                            ), // color of the border beside email.
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Phone Number cannot be Blank.";
                          } else if (value.length < 10) {
                            return " Please enter a valid 10 digit Phone Number.";
                          } else {
                            return null;
                          }
                        }),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color(0xff967d51),
                    ),
                    child: TextButton(
                      style: const ButtonStyle(
                        splashFactory: NoSplash
                            .splashFactory, //Used for blue flash light on pressed button.
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Send OTP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
