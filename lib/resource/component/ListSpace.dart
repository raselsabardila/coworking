import 'package:coworking/public/style/Style.dart';
import 'package:flutter/material.dart';

class ListSpace extends StatelessWidget {
  String _name, _location, imgURL;
  int _price, _rating;

  ListSpace(this._name, this._location, this._price, this._rating, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 15),
          width: 140,
          height: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(this.imgURL),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    color: primaryPurple,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(36),
                        bottomLeft: Radius.circular(53))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "${this._rating}/5",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              this._name,
              style: titleList,
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Text(
                  "\$${this._price}/",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: primaryPurple,
                      fontWeight: FontWeight.w500),
                ),
                Text("hour",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: primaryGreyBold.withOpacity(0.7),
                        fontWeight: FontWeight.w400))
              ],
            ),
            SizedBox(height: 28),
            Text(this._location,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    color: primaryGreyBold.withOpacity(0.7),
                    fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }
}
