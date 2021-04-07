import 'package:flutter/material.dart';
import 'package:supercell/models/new/new_molde.dart';
import 'package:supercell/widgets/primary_button.dart';

class NewSection extends StatelessWidget {
  final List<NewModel> newModels;

  NewSection({
    Key? key,
    required this.newModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        return Column(
          children: [
            GridView.builder(
              itemCount: newModels.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: maxWidth / 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 0,
              ),
              padding: EdgeInsets.symmetric(horizontal: 25),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return _buildNewItem(newModels[index]);
              },
            ),
            PrimaryButton(
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              text: "NEWS ARCHIVE",
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

  Widget _buildNewItem(NewModel newModel) {
    // imagesUrlAssets = clan_wars_news_article_0_large.jpg;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/${newModel.imageUrlAsset}',
          // preencher toda a lateral
          fit: BoxFit.fitWidth,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'NEWS',
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Three All-New Clash Games Revealed',
              style: TextStyle(),
            ),
          ),
        )
      ],
    );
  }
}
