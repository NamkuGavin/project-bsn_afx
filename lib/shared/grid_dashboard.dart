import 'package:bsn_afx/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatefulWidget {
  final String logo;
  final String title;
  bool ishovering;
  GridDashboard(
      {Key? key,
      required this.logo,
      required this.title,
      required this.ishovering})
      : super(key: key);

  @override
  State<GridDashboard> createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (PointerEvent event) =>
            setState(() => widget.ishovering = true),
        onExit: (PointerEvent event) =>
            setState(() => widget.ishovering = false),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: SharedColor.primary),
              color: Colors.white),
          height: 100.h,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.logo,
                  scale: 2,
                  color: widget.logo == "assets/duit.png" ||
                          widget.logo == "assets/jom_pay.png"
                      ? null
                      : widget.ishovering
                          ? SharedColor.textSecondary
                          : null),
              SizedBox(height: 10.h),
              Text(
                widget.title,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    color: widget.ishovering
                        ? SharedColor.textSecondary
                        : SharedColor.text,
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
