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
  bool _isHoveringAppbar1 = false;
  bool _isHoveringAppbar2 = false;
  bool _isHoveringAppbar3 = false;
  bool _isHoveringDashboard1 = false;
  bool _isHoveringDashboard2 = false;
  bool _isHoveringDashboard3 = false;
  final bool _isHoveringQuicklink1 = false;
  final bool _isHoveringQuicklink2 = false;
  final bool _isHoveringQuicklink3 = false;
  final bool _isHoveringQuicklink4 = false;
  final bool _isHoveringQuicklink5 = false;
  final bool _isHoveringQuicklink6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              children: [
                IntrinsicWidth(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    color: SharedColor.secondary,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        upperDashboard(),
                        downDashboard(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 125,
              left: 150,
              child: Image.asset("assets/note.png", scale: 2),
            )
          ],
        ),
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
                    setState(() => _isHoveringAppbar1 = true),
                onExit: (PointerEvent event) =>
                    setState(() => _isHoveringAppbar1 = false),
                child: Text(
                  "Settings\n& Other Services",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: _isHoveringAppbar1
                          ? SharedColor.hoverText
                          : Colors.white),
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
                    setState(() => _isHoveringAppbar2 = true),
                onExit: (PointerEvent event) =>
                    setState(() => _isHoveringAppbar2 = false),
                child: Text(
                  "Messages",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: _isHoveringAppbar2
                          ? SharedColor.hoverText
                          : Colors.white),
                ),
              ),
              SizedBox(width: 10.w),
              MouseRegion(
                onEnter: (PointerEvent event) =>
                    setState(() => _isHoveringAppbar3 = true),
                onExit: (PointerEvent event) =>
                    setState(() => _isHoveringAppbar3 = false),
                child: Text(
                  "Contact Us",
                  style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: _isHoveringAppbar3
                          ? SharedColor.hoverText
                          : Colors.white),
                ),
              ),
              SizedBox(width: 8.w),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(45.w, 50.h)),
                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return SharedColor.textSecondary;
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
          padding: const EdgeInsets.fromLTRB(15, 15, 125, 15),
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
        MouseRegion(
          onEnter: (PointerEvent event) =>
              setState(() => _isHoveringDashboard1 = true),
          onExit: (PointerEvent event) =>
              setState(() => _isHoveringDashboard1 = false),
          child: Text(
            "Transfers / Payments /\nPrepaid Reload",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                color: _isHoveringDashboard1
                    ? SharedColor.textSecondary
                    : SharedColor.text,
                fontSize: 16),
          ),
        ),
        SizedBox(height: 40.h),
        MouseRegion(
          onEnter: (PointerEvent event) =>
              setState(() => _isHoveringDashboard2 = true),
          onExit: (PointerEvent event) =>
              setState(() => _isHoveringDashboard2 = false),
          child: Text(
            "Apply",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                color: _isHoveringDashboard2
                    ? SharedColor.textSecondary
                    : SharedColor.text,
                fontSize: 16),
          ),
        ),
        SizedBox(height: 40.h),
        MouseRegion(
          onEnter: (PointerEvent event) =>
              setState(() => _isHoveringDashboard3 = true),
          onExit: (PointerEvent event) =>
              setState(() => _isHoveringDashboard3 = false),
          child: Text(
            "DuitNow",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                color: _isHoveringDashboard3
                    ? SharedColor.textSecondary
                    : SharedColor.text,
                fontSize: 16),
          ),
        ),
        SizedBox(height: 15.h),
        Divider(
          color: SharedColor.primary,
        ),
        SizedBox(height: 15.h),
      ],
    );
  }

  downDashboard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          children: [
            GridDashboard(
                logo: "assets/duit.png",
                title: "DuitNow\nTransfer",
                ishovering: _isHoveringQuicklink1),
            GridDashboard(
                logo: "assets/jom_pay.png",
                title: "JomPAY",
                ishovering: _isHoveringQuicklink2),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GridDashboard(
                logo: "assets/efficiency.png",
                title: "Investments",
                ishovering: _isHoveringQuicklink3),
            GridDashboard(
                logo: "assets/trade.png",
                title: "Transfers",
                ishovering: _isHoveringQuicklink4),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GridDashboard(
                logo: "assets/pay.png",
                title: "Payments",
                ishovering: _isHoveringQuicklink5),
            GridDashboard(
                logo: "assets/phone.png",
                title: "Prepaid Reload",
                ishovering: _isHoveringQuicklink6),
          ],
        ),
      ],
    );
  }
}
