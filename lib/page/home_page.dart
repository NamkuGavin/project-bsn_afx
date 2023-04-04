import 'package:bsn_afx/shared/color.dart';
import 'package:bsn_afx/shared/deposit_item.dart';
import 'package:bsn_afx/shared/grid_dashboard.dart';
import 'package:bsn_afx/shared/item_profile.dart';
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
      backgroundColor: SharedColor.background,
      appBar: appBarWidget(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicWidth(
                  child: Container(
                    height: 750.h,
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
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.white,
                          elevation: 6,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: SharedColor.primary,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: const Offset(5, 7),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 70),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Deposit",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Financing",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Investments",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Transactions",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.white,
                                  elevation: 6,
                                  shadowColor: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Welcome Ismail Ali",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        SizedBox(height: 10.h),
                                        Divider(
                                          color: SharedColor.primary,
                                          thickness: 2,
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const ItemProfile(
                                                  item:
                                                      "Your last successful login 16-04-2022 17:20:20",
                                                  itemBold: '',
                                                ),
                                                SizedBox(height: 10.h),
                                                const ItemProfile(
                                                  item:
                                                      "Your last failed login 28-02-2019 01:03:42",
                                                  itemBold: '',
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 40.w),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const ItemProfile(
                                                  item: "You have ",
                                                  itemBold:
                                                      '0 pending transaction(s)',
                                                ),
                                                SizedBox(height: 10.h),
                                                const ItemProfile(
                                                  item: "You have ",
                                                  itemBold:
                                                      '0 failed transaction(s)',
                                                ),
                                                SizedBox(height: 10.h),
                                                const ItemProfile(
                                                  item: "Accumulated Points ",
                                                  itemBold: '23,001 points',
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Deposit",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: const [
                                        DepositItem(
                                            title: "Current Account",
                                            subtitle: "0123456789",
                                            imagelogo: "assets/discount.png",
                                            balanced: "RM 12,345.67"),
                                        DepositItem(
                                            title: "Joint Savings Account",
                                            subtitle: "0123456789",
                                            imagelogo: "assets/pink_paper.png",
                                            balanced: "RM 12,345.67"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const DepositItem(
                                            title: "Savings Account",
                                            subtitle: "0123456789",
                                            imagelogo: "assets/dollar.png",
                                            balanced: "RM 12,345.67"),
                                        Image.asset("assets/billing.png",
                                            scale: 2),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40.h),
                                Center(
                                  child: Text(
                                    "Money withdrawn from your insured deposit(s) is no longer protected by PIDM if transferred to non PIDM members",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 575,
                            left: 200,
                            child: Row(
                              children: [
                                Container(
                                  height: 110.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.horizontal(
                                        left: Radius.circular(10)),
                                    color: SharedColor.primary,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Icon(Icons.arrow_back_ios_rounded,
                                        color: SharedColor.iconArrow),
                                  ),
                                ),
                                Image.asset("assets/donation.png", scale: 2),
                                Container(
                                  height: 110.h,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.horizontal(
                                        right: Radius.circular(10)),
                                    color: SharedColor.primary,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Icon(Icons.arrow_forward_ios_rounded,
                                        color: SharedColor.iconArrow),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 125,
              left: 140,
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
        SizedBox(height: 25.h),
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
        SizedBox(height: 50.h),
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
        SizedBox(height: 50.h),
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
        SizedBox(height: 25.h),
        Divider(
          color: SharedColor.primary,
        ),
        SizedBox(height: 25.h),
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
        SizedBox(height: 25.h),
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
