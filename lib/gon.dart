import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GonPage extends StatelessWidget {
  const GonPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 50),
      child: Column(
        children: <Widget>[
          _buildProfileImage(context),
          _buildProfileDetails(context),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Text(
              "Gon Freecss (ゴン゠フリークス, Gon Furīkusu) is a Rookie Hunter and the son of Ging Freecss. Finding his father is Gon's motivation in becoming a Hunter. He has been the main protagonist for most of the series, having said role in the Hunter Exam, Zoldyck Family, Heavens Arena, Greed Island, and Chimera Ant arcs. He was also the deuteragonist of the Yorknew City arc.",
              textAlign: TextAlign.justify,
            )),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: ClipOval(
        child: Image.asset(
          'assets/images/gon.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Gon Freecss',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Occupation', 'Rookie Hunter'),
          _buildDetailsRow('Aura type', 'Enhancement'),
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$heading: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }
}
