import 'package:flutter/material.dart';
import 'package:supercell/widgets/primary_button.dart';

class GamesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double aspectRatio = 2.4;
        return AspectRatio(
          aspectRatio: aspectRatio,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Image.asset(
                  'assets/images/bg_wmg_brawlstars_large.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "GAMES",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Our dream is to create games that are played by as many people as possible, enjoyed for years and remembered forever.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16),
                            PrimaryButton(
                              backgroundColor: Colors.white,
                              text: "SEE GAMES",
                              onPressed: () {},
                              textColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: AspectRatio(
                            aspectRatio: 0.9,
                            child: Image.asset(
                              'assets/images/fp_wmg_brawlstars.png',
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
