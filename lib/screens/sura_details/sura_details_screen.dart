import 'package:flutter/material.dart';
import 'package:islami_c17_online/core/app_colors.dart';
import 'package:islami_c17_online/core/app_styles.dart';
import 'package:islami_c17_online/models/sura_model.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetailsScreen";

  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.primary),
        title: Text(model.nameEn, style: AppStyles.bodyStyle),
        centerTitle: true,
      ),

      body: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/sura_bg.png", fit: BoxFit.cover),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(model.nameAr, style: AppStyles.bodyStyle),
                ),
                SizedBox(height: 40),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        Center(child: Text("data", style: AppStyles.bodyStyle)),
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
