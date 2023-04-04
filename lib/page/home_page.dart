import 'package:bsn_afx/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHovering1 = false;
  bool _isHovering2 = false;
  bool _isHovering3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
    );
  }

  appBarWidget() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: SharedColor.primary,
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
              MouseRegion(
                onEnter: (PointerEvent event) =>
                    setState(() => _isHovering1 = true),
                onExit: (PointerEvent event) =>
                    setState(() => _isHovering1 = false),
                child: Text(
                  "Settings\n& Other Services",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color:
                          _isHovering1 ? SharedColor.hoverText : Colors.white),
                ),
              ),
              SizedBox(width: 10.w),
              Image.asset(
                "assets/alert.png",
                scale: 2,
              ),
              SizedBox(width: 2.w),
              MouseRegion(
                onEnter: (PointerEvent event) =>
                    setState(() => _isHovering2 = true),
                onExit: (PointerEvent event) =>
                    setState(() => _isHovering2 = false),
                child: Text(
                  "Messages",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color:
                          _isHovering2 ? SharedColor.hoverText : Colors.white),
                ),
              ),
              SizedBox(width: 10.w),
              MouseRegion(
                onEnter: (PointerEvent event) =>
                    setState(() => _isHovering3 = true),
                onExit: (PointerEvent event) =>
                    setState(() => _isHovering3 = false),
                child: Text(
                  "Contact Us",
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color:
                          _isHovering3 ? SharedColor.hoverText : Colors.white),
                ),
              ),
              SizedBox(width: 8.w),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(45.w, 50.h)),
                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return SharedColor.hoverTextButton;
                      }
                      return SharedColor.primary;
                    },
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return SharedColor.hoverButtonDemo;
                      }
                      return null;
                    },
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "LOGOUT",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
