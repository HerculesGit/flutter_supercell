import 'package:flutter/material.dart';
import 'package:supercell/widgets/super_cell_logo.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      return AspectRatio(
        aspectRatio: 2.8,
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  _buildSocial(),
                  Spacer(),
                  _buildAppStores(),
                ],
              ),
              Divider(color: Colors.grey),
              _buildBussinessLinks(),
              Row(
                children: [
                  _buildBussinessInfos(),
                  Spacer(),
                  SuperCellLogo(),
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _buildSocial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _footerWhiteText('Follow us on'),
        Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.ondemand_video_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.brightness_high_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.business_sharp,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.remove_circle_outline_sharp,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
      ],
    );
  }

  Widget _buildAppStores() {
    return Row(
      children: [
        Container(color: Colors.blue, width: 120, height: 60),
        const SizedBox(width: 10),
        Container(color: Colors.green, width: 120, height: 60),
      ],
    );
  }

  Widget _buildBussinessLinks() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Row(
        children: [
          _buildOneLink("Terms of Service"),
          const SizedBox(width: 10),
          _buildOneLink("Privacy Policy"),
          const SizedBox(width: 10),
          _buildOneLink("Parent's Guide"),
          const SizedBox(width: 10),
          _buildOneLink("Safe and Fair Play Policy"),
        ],
      ),
    );
  }

  Widget _buildOneLink(String text) {
    return _footerWhiteText(text);
  }

  Widget _footerWhiteText(String text) =>
      Text('$text', style: TextStyle(color: Colors.white, fontSize: 12));

  Widget _buildBussinessInfos() {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _footerGreyText("Supercell Oy"),
          const SizedBox(height: 5),
          _footerGreyText("Jätkäsaarenlaituri 1"),
          const SizedBox(height: 5),
          _footerGreyText("00180 Helsinki"),
          const SizedBox(height: 5),
          _footerGreyText("Finland"),
        ],
      ),
    );
  }

  Widget _footerGreyText(String text) =>
      Text('$text', style: TextStyle(color: Colors.grey, fontSize: 12));
}
