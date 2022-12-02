import 'package:flutter/material.dart';

class KilluaPage extends StatelessWidget {
  const KilluaPage({Key? key}) : super(key: key);
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
              'Killua Zoldyck (キルア゠ゾルディック, Kirua Zorudikku) is the third child of Silva and Kikyo Zoldyck and the heir of the Zoldyck Family, until he runs away from home and becomes a Rookie Hunter. He is the best friend of Gon Freecss and is currently traveling with Alluka Zoldyck.',
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
          'assets/images/killua.jpg',
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
            'Killua Zoldyck',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Occupation', 'Rookie Hunter'),
          _buildDetailsRow('Aura type', 'Transmutation'),
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
