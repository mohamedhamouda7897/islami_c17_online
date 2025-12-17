import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c17_online/models/hadeth_model.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadithData = [];

  @override
  void initState() {
    super.initState();
    loadHadithFile();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/hadeth_bg.png"),
        ),
      ),
      child: CarouselSlider(
        options: CarouselOptions(height: double.infinity),
        items: allAhadithData.map((model) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.only(top: 170),

                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset("assets/images/hadith_card.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Text(
                            model.title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: model.content.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    model.content[index],
                                    maxLines: 8,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  // trim()
  // String x="   Mohamed  "; // >> "Mohamed"
  // String x1="   Mohamed";// >> "Mohamed"
  // String x2="Mohamed  ";// >> "Mohamed"
  // String x4="Moh   amed";// >> "Moh   amed"
  loadHadithFile() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allAhadeth = hadethFile.split("#"); // len >> 50

    for (int i = 0; i < allAhadeth.length; i++) {
      String hadethOne = allAhadeth[i];
      List<String> hadethLines = hadethOne.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> hadethContent = hadethLines;

      print(title);
      allAhadithData.add(HadethModel(title, hadethContent));
    }

    setState(() {});
  }
}
