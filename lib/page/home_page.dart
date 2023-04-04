import 'package:bsn_afx/shared/color.dart';
import 'package:bsn_afx/shared/grid_dashboard.dart';
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
      body: Row(
        children: [
          IntrinsicWidth(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              color: SharedColor.secondary,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    upperDashboard(),
                    Text(
                      "Quick Links",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          color: SharedColor.text,
                          fontSize: 16),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        GridDashboard(
                            logo: "assets/duit.png",
                            title: "DuitNow\nTransfer"),
                        GridDashboard(
                            logo: "assets/jom_pay.png", title: "JomPAY"),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        GridDashboard(
                            logo: "assets/efficiency.png",
                            title: "Investments"),
                        GridDashboard(
                            logo: "assets/trade.png", title: "Transfers"),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        GridDashboard(
                            logo: "assets/pay.png", title: "Payments"),
                        GridDashboard(
                            logo: "assets/phone.png", title: "Prepaid Reload"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
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

  upperDashboard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 100, 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: SharedColor.primary,
          ),
          child: Text(
            "My Accounts",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          "Transfers / Payments /\nPrepaid Reload",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              color: SharedColor.text,
              fontSize: 16),
        ),
        SizedBox(height: 40.h),
        Text(
          "Apply",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              color: SharedColor.text,
              fontSize: 16),
        ),
        SizedBox(height: 40.h),
        Text(
          "DuitNow",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              color: SharedColor.text,
              fontSize: 16),
        ),
        SizedBox(height: 15.h),
        Divider(
          color: SharedColor.primary,
        ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
