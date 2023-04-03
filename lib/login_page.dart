import 'package:bsn_afx/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      bottomNavigationBar: Container(
        height: 40.h,
        color: SharedColor.primaryColor,
      ),
      body: Stack(
        children: [
          Image.asset("assets/background.jpeg",
              fit: BoxFit.cover, width: double.infinity),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.grey.shade900.withOpacity(0.97),
                ],
                    stops: const [
                  0.5,
                  0.9
                ])),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 23),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "e-Banking Charter",
                      style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(width: 8.w),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "Privacy Policy",
                      style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(width: 8.w),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "Terms & Conditions",
                      style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(width: 8.w),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "FAQ",
                      style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Image.asset(
                "assets/parachute_dollar.png",
                scale: 2,
              ),
            ),
          )
        ],
      ),
    );
  }

  appBarWidget() {
    return AppBar(
      backgroundColor: SharedColor.primaryColor,
      title: Image.asset(
        "assets/logo_web.png",
        scale: 1.75,
        fit: BoxFit.cover,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            children: [
              Text(
                "Contact Us",
                style: GoogleFonts.roboto(
                    fontSize: 13, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8.w),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(45.w, 50.h)),
                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return SharedColor.hoverTextButtonColor;
                      }
                      return SharedColor.primaryColor;
                    },
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return SharedColor.hoverButtonColor;
                      }
                      return null;
                    },
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.play_arrow),
                    SizedBox(width: 2.w),
                    Text(
                      "DEMO",
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
