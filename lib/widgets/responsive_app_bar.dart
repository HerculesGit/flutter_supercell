import 'package:flutter/material.dart';
import 'package:supercell/widgets/super_cell_logo.dart';

class ResponsiveAppBar extends StatefulWidget {
  @override
  _ResponsiveAppBarState createState() => _ResponsiveAppBarState();
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  double topTongueGamesItems = -65;
  double topTongueCareersItems = -65;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.biggest);
        final maxWidth = constraints.maxWidth;
        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 120),
          child: Container(
            // height: fullAppBarHeight,
            // width: constraints.maxWidth,
            child: Stack(
              fit: StackFit.expand,
              children: [
                _buildDisplayTongue(maxWidth),
                // _buildDisplayTongue(maxWidth),
                Positioned(
                  top: 0,
                  width: maxWidth,
                  // constraints: BoxConstraints(),
                  child: Container(
                    // alignment: Alignment.topRight,
                    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    color: Colors.black,
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildLogo(),
                            const SizedBox(width: 16),
                            _buildGames(),
                            const SizedBox(width: 16),
                            _buildCarees(),
                            const SizedBox(width: 16),
                            _buildSupport(),
                            const SizedBox(width: 16),
                            _buildThreeDots(),
                            const SizedBox(width: 16),
                            Spacer(),
                            _buildSuperCellId(),
                            _buildDivider(),
                            _buildSearchIcon()
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 100,
                  child: IconButton(
                      icon: Icon(Icons.plumbing),
                      onPressed: () {
                        setState(() {
                          if (topTongueGamesItems == -65)
                            topTongueGamesItems = 65;
                          else if (topTongueGamesItems == 65)
                            topTongueGamesItems = -65;
                        });
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDisplayTongue(double maxWidth, [id = 'games']) {
    return AnimatedPositioned(
        curve: Curves.easeIn,
        top: topTongueGamesItems,
        child: _displayTongueItems(maxWidth),
        duration: Duration(milliseconds: 200));
  }

  Widget _displayTongueItems(double maxWidth) {
    List<String> items = [
      'Hay Day',
      'Clash of Clans',
      'Boom Beach',
      'Clash Royale',
      'Brawl Stars',
    ];

    List<Widget> childrensRow = [];
    for (var item in items) {
      childrensRow.add(
        Container(
          margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Text(
            '$item',
            style: _appBarItemStyle(),
          ),
        ),
      );
    }

    return Container(
      height: 50,
      width: maxWidth,
      color: Colors.black87,
      child: Row(
        children: childrensRow,
      ),
    );
  }

  TextStyle _appBarItemStyle() => TextStyle(
        color: Colors.grey,
        fontSize: 16,
      );

  Widget _buildLogo() {
    return Align(child: SuperCellLogo());
  }

  Widget _buildGames() {
    return Container(
      child: Text(
        'Games',
        style: _appBarItemStyle(),
      ),
    );
  }

  Widget _buildCarees() {
    return Container(
      child: Text(
        'Careers',
        style: _appBarItemStyle(),
      ),
    );
  }

  Widget _buildSupport() {
    return Container(
      child: Text(
        'Support',
        style: _appBarItemStyle(),
      ),
    );
  }

  Widget _buildThreeDots() {
    final List<Widget> dots = [];
    for (var dot in [1, 2, 3]) {
      dots.add(
        Container(
          margin: EdgeInsets.only(right: (dot != 3) ? 3 : 0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(100),
          ),
          width: 5,
          height: 5,
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(5)),
      width: 45,
      height: 28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [...dots],
      ),
    );
  }

  Widget _buildSuperCellId() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Text(
            'SUPERCELL',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.grey[50],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.grey[50], borderRadius: BorderRadius.circular(5)),
          child: Text(
            'ID',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return VerticalDivider(color: Colors.grey);
  }

  Widget _buildSearchIcon() {
    return IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.grey,
      ),
      onPressed: null,
    );
  }
}
