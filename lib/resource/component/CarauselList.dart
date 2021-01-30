import 'package:coworking/public/style/Style.dart';
import 'package:flutter/material.dart';

class CarauselList extends StatelessWidget {
  String _country, _imgURL;
  bool _active;

  CarauselList(this._country, this._active, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 125,
          height: 160,
          decoration: BoxDecoration(
              color: primaryGreyLight,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 0,
                    color: primaryGreyBold.withOpacity(0.1),
                    offset: Offset(0, 1))
              ]),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(this._imgURL), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: (this._active)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                                color: primaryPurple,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(36),
                                    bottomLeft: Radius.circular(53))),
                            child: Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 19,
                              ),
                            ),
                          )
                        ],
                      )
                    : null,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  this._country,
                  style: titleList,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
