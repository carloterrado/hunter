import 'package:flutter/material.dart';

class LeorioPage extends StatelessWidget {
  const LeorioPage({Key? key}) : super(key: key);
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
              'Leorio Paradinight (レオリオ゠パラディナイト, Reorio Paradinaito) is a Rookie Hunter and a member of the Zodiacs with the codename "Boar" (亥い, I). He is currently a medical student, studying to become a doctor.',
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
          'assets/images/leorio.png',
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
            'Leorio Paradinight',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Occupation', 'Rookie Hunter'),
          _buildDetailsRow('Aura type', 'Emission'),
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

  Widget _buildAction(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40),
          Text(text),
        ],
      ),
    );
  }
}
