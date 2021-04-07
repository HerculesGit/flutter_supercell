import 'package:flutter/material.dart';
import 'package:supercell/widgets/secondary_button.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double aspectRatio = 2.5;
        return AspectRatio(
          aspectRatio: aspectRatio,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Image.asset(
                  'assets/images/characters_normal.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              _buildTextSuperCell(constraints.maxWidth),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextSuperCell(double width) {
    return Positioned.fill(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 10),
            child: Text(
              'SUPERCELL',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            width: width * 0.31,
            child: Text(
              'Makers of Hay Day, Clash of Clans, Boom Beach, Clash Royale and Brawl Stars.',
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
          ),
          Spacer(flex: 2),
          _buildSeeLatestButton(),
          Spacer()
        ],
      ),
    );
  }

  _buildSeeLatestButton() {
    return SecondaryButton();
  }
}
