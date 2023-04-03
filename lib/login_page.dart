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
          Image.asset("assets/background.png",
              scale: 5, fit: BoxFit.cover, width: double.infinity),
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
                scale: 1.75,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 30,
            child: Container(
              width: 75.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFEFEDED),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to BSN Internet Banking",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900, fontSize: 25),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "Manage your account online at your convenience",
                          style: GoogleFonts.roboto(
                            color: const Color(0xFF707070),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Text(
                          "Username",
                          style: GoogleFonts.roboto(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 1.5,
                                blurRadius: 1, // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "FORGOT PASSWORD",
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                                Size(double.infinity, 50.h)),
                            backgroundColor: MaterialStateProperty.all(
                                SharedColor.primaryColor),
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return SharedColor.hoverButtonLoginColor;
                                }
                                return null;
                              },
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "LOGIN",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                      color: Colors.white,
                    ),
                    height: 75.h,
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/security.png",
                                        scale: 1.75,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6),
                                        child: Image.asset(
                                          "assets/security_new.png",
                                          scale: 2.25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "SECURITY ALERT",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
                                )
                              ],
                            ),
                            const VerticalDivider(
                              endIndent: 10,
                              indent: 10,
                              color: Colors.black,
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/finger.png",
                                    scale: 2.2,
                                  ),
                                  Text(
                                    "ANNOUNCEMENTS",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 287,
            child: Image.asset("assets/money_logo.png", scale: 2),
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
                        return SharedColor.hoverButtonDemoColor;
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
