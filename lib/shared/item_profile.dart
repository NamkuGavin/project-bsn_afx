import 'package:bsn_afx/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemProfile extends StatefulWidget {
  final String item;
  final String itemBold;
  const ItemProfile({Key? key, required this.item, required this.itemBold})
      : super(key: key);

  @override
  State<ItemProfile> createState() => _ItemProfileState();
}

class _ItemProfileState extends State<ItemProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: SharedColor.primary,
          radius: 6,
        ),
        SizedBox(width: 2.w),
        RichText(
          text: TextSpan(
            text: widget.item,
            style: GoogleFonts.roboto(fontSize: 15),
            children: [
              TextSpan(
                text: widget.itemBold,
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
