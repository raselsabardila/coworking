import 'package:coworking/public/style/Style.dart';
import 'package:flutter/material.dart';

class EventsList extends StatelessWidget {
  String _name, _location, _imgURL;

  EventsList(this._name, this._location, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Row(
        children: <Widget>[
          Container(
              height:80,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this._imgURL), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20))),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this._name,
                style: titleList,
              ),
              SizedBox(height: 4),
              Text(this._location,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: primaryGreyBold.withOpacity(0.7),
                      fontWeight: FontWeight.w400)),
            ],
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: primaryGreyBold.withOpacity(0.6),
              size: 17,
            ),
          )
        ],
      ),
    );
  }
}
