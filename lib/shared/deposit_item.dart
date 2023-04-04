import 'package:bsn_afx/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DepositItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imagelogo;
  final String balanced;
  const DepositItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imagelogo,
      required this.balanced})
      : super(key: key);

  @override
  State<DepositItem> createState() => _DepositItemState();
}

class _DepositItemState extends State<DepositItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.w,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        elevation: 6,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: GoogleFonts.roboto(
                            color: SharedColor.primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        widget.subtitle,
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.w),
                  Row(
                    children: [
                      Image.asset(widget.imagelogo, scale: 1.75),
                      SizedBox(width: 1.w),
                      Image.asset("assets/arrow.png", scale: 2.5)
                    ],
                  ),
                ],
              ),
              Divider(
                color: SharedColor.primary,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Balance",
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    widget.balanced,
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.w900),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
