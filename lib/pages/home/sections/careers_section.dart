import 'package:flutter/material.dart';
import 'package:supercell/widgets/primary_button.dart';

class CareersSection extends StatelessWidget {
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
                  'assets/images/bg_fp_nextstep_large.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(flex: 3),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "CAREERS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Join us and create games that are played for years and remembered forever.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16),
                            PrimaryButton(
                              backgroundColor: Colors.white,
                              text: "SEE CAREERS",
                              onPressed: () {},
                              textColor: Colors.black,
                            )
                          ],
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
