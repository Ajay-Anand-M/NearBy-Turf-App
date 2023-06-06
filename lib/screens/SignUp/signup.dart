import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/turf.jpg'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.black.withOpacity(0.2),

        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35,top: 50),
              child: const Text('Create\nAccount !',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.lightBlueAccent,
                      offset: Offset(0, 3),
                    ),
                  ],

                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.28,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      style:  const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.black.withOpacity(0.4),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Name",
                        hintStyle: const TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      keyboardType: TextInputType.phone,
                      style:  const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.4),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:const  BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        // hoverColor: Colors.red,
                        hintText: "Mobile Number",
                        hintStyle: const TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                    ),
                   const  SizedBox(height: 10,),
                    TextField(
                      style:  const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.black.withOpacity(0.4),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:const  BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: const TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      style:  const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.4),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10),
                        ),

                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Sign Up',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                blurRadius: 5.0,
                                color: Colors.lightBlueAccent,
                                offset: Offset(0, 3),
                              ),
                            ],
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,

                          backgroundColor: Colors.white.withOpacity(0.5),
                          child: IconButton(
                            color: Colors.black,
                            onPressed: (){},
                            icon: const Icon(Icons.arrow_forward,
                            // shadows: [
                            //     Shadow(
                            //       blurRadius: 5.0,
                            //       color: Colors.lightBlueAccent,
                            //       offset: Offset(0, 1),
                            //     ),
                            //   ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}