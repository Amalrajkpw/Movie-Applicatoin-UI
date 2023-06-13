import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_mod_application/application/controller/login_controller.dart';

import 'package:movie_mod_application/view/main_screen/screen_main.dart';
import 'package:movie_mod_application/widgets/const_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Background Image
        Container(
          height: size.height * .40,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://c4.wallpaperflare.com/wallpaper/231/870/441/movie-collage-wallpaper-preview.jpg"),
                  fit: BoxFit.fill)),
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Color(0xff012A52)],
                begin: Alignment.center,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Image.network(
                "https://moviesmod.pro/wp-content/uploads/2022/12/moviesmodnew-Custom.png"),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            const    Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),

                // login form fields
                TextFormField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100.withOpacity(0.2),
                  labelText: 'E-mail address',
                  labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  hintText: 'e.g.name@gmail.com',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                )),

                TextFormField(
                    decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
                    color: Colors.grey.shade600,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100.withOpacity(0.2),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  hintText: 'eg:123asdf%#',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              tristate: true,
                              activeColor: Colors.blue,
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool ?? false;
                                });
                              }),
                          BasicFont(
                            title: 'Remember me',
                            size: 13,
                            bold: FontWeight.normal,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    BasicFont(
                      title: 'Forgot Password?',
                      size: 13,
                      bold: FontWeight.normal,
                      color: Colors.grey,
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenMain()));
                      },
                      child: Text('Login')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey.shade700,
                      height: 2,
                      width: size.width / 2.8,
                    ),
                    BasicFont(
                      title: 'OR',
                      size: 13,
                      bold: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.grey.shade700,
                      height: 2,
                      width: size.width / 2.8,
                    ),
                  ],
                ),
                //login with google

                InkWell(
                  onTap: (() async {
                    await widget.controller.login();
                    if (widget.controller.googleAccount.value == null) {
                      return;
                    } else {
                      final sharedPref = await SharedPreferences.getInstance();
                      final userLoggedIn = sharedPref.setBool(SAVE_KEY, true);
                       
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenMain()));
                    }
                  }),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const   Image(
                            image: NetworkImage(
                                'http://pngimg.com/uploads/google/google_PNG19635.png')),
                        BasicFont(
                          title: 'Login with Google',
                          size: 14,
                          bold: FontWeight.w600,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BasicFont(
                      title: "Don't have an account?",
                      size: 12,
                      bold: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    BasicFont(
                      title: 'Sign up',
                      size: 14,
                      bold: FontWeight.normal,
                      color: Colors.purple,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}




 