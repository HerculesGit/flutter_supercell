import 'package:flutter/material.dart';
import 'package:supercell/models/new/new_molde.dart';
import 'package:supercell/pages/home/sections/careers_section.dart';
import 'package:supercell/pages/home/sections/footer_section.dart';
import 'package:supercell/pages/home/sections/games_section.dart';
import 'package:supercell/pages/home/sections/new_section.dart';
import 'package:supercell/pages/home/sections/top_section.dart';
import 'package:supercell/widgets/responsive_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size(width, 50),
          //   child: ResponsiveAppBar(),
          // ),
          // appBar: AppBar(),
          body: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1400),
            child: Stack(
              children: [
                ListView(
                  children: [
                    TopSection(),
                    NewSection(
                      newModels: [
                        NewModel(
                            name: 'Three All-New Clash Games Revealed',
                            imageUrlAsset: 'clash_of_clans_large.jpg'),
                        NewModel(
                            name: 'The Art of Supercell Out Now',
                            imageUrlAsset:
                                'supercell_retail_ev_01_news_article_large.jpg'),
                        NewModel(
                            name: 'Supercell ID Now in Beatstar by Space Ape',
                            imageUrlAsset: 'sc_id_front_page_large.jpg'),
                        NewModel(
                            name: 'Ilkka\'s Take on Supercell in 2020',
                            imageUrlAsset:
                                'clan_wars_news_article_0_large.jpg'),
                      ],
                    ),
                    GamesSection(),
                    CareersSection(),
                    FooterSection(),
                  ],
                ),

                //

                Positioned(
                  child: ResponsiveAppBar(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
