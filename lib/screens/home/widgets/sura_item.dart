import 'package:flutter/material.dart';
import 'package:islami_c17_online/models/sura_model.dart';

class SuraItem extends StatelessWidget {
  SuraModel model;

  SuraItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      trailing: Text(
        model.nameAr,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/sura_number.png", width: 52, height: 52),
          Text(
            "${model.suraIndex}",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      subtitle: Text(
        "${model.versesCount} Verses",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      title: Text(
        model.nameEn,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    // return Row(
    //   children: [
    //     Stack(
    //       alignment: Alignment.center,
    //       children: [
    //         Image.asset("assets/images/sura_number.png", width: 52, height: 52),
    //         Text("1", style: TextStyle(
    //           fontSize: 20,
    //           color: Colors.white,
    //           fontWeight: FontWeight.bold,
    //         ),)
    //       ],
    //     ),
    //     SizedBox(width: 24),
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           name,
    //           style: TextStyle(
    //             fontSize: 20,
    //             color: Colors.white,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         Text(
    //           "100 verses",
    //           style: TextStyle(
    //             fontSize: 14,
    //             fontWeight: FontWeight.bold,
    //             color: Colors.white,
    //           ),
    //         ),
    //       ],
    //     ),
    //     Spacer(),
    //     Text(
    //       name,
    //       style: TextStyle(
    //         fontSize: 20,
    //         color: Colors.white,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //   ],
    // );
  }
}
