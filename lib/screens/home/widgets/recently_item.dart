import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c17_online/core/app_colors.dart';
import 'package:islami_c17_online/models/sura_model.dart';

class RecentlyItem extends StatelessWidget {
  SuraModel model;

  RecentlyItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.nameEn,
                  maxLines: 1,
                  style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  model.nameAr,
                  style: GoogleFonts.elMessiri(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "${model.versesCount} Verses",
                  style: GoogleFonts.elMessiri(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset("assets/images/recent.png")),
        ],
      ),
    );
  }
}
