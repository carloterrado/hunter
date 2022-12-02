import 'package:flutter/material.dart';

class KurapikaPage extends StatelessWidget {
  const KurapikaPage({Key? key}) : super(key: key);
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
              "Kurapika (クラピカ, Kurapika) is the last survivor of the Kurta Clan. He is a Blacklist Hunter and current leader of the organization founded by Light Nostrade. He is a member of the Zodiacs with the codename 'Rat' (子ね , Ne). His goal is to avenge his clan and recover the remaining Scarlet Eyes.",
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
          'assets/images/kurapika.png',
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
            'Kurapika',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Occupation', 'Blacklist Hunter'),
          _buildDetailsRow('Aura type', 'Conjuration,Specialization'),
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
