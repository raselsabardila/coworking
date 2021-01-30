import 'package:coworking/model/Event.dart';
import 'package:coworking/model/Space.dart';
import 'package:coworking/public/style/Style.dart';
import 'package:coworking/resource/component/CarauselList.dart';
import 'package:coworking/resource/component/EventsList.dart';
import 'package:coworking/resource/component/IconFooter.dart';
import 'package:coworking/resource/component/ListSpace.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Space King",
                          style: headerText,
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Where freelance working",
                          style: titleBody.copyWith(
                              color: primaryGreyBold.withOpacity(0.6)),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 2, right: 2),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: primaryOrange, shape: BoxShape.circle),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryGreyLight,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0,
                            color: primaryGreyBold.withOpacity(0.1),
                            offset: Offset(0, 1))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: primaryGreyBold,
                        ),
                        border: InputBorder.none,
                        hintText: "Search coworking...",
                        hintStyle: titleBody.copyWith(color: primaryGreyBold)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Popular Countries",
                  style: titleBody,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: double.infinity,
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CarauselList("America S", false,
                          "https://images.unsplash.com/photo-1595901688281-9cef114adb0b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dGltZXMlMjBzcXVhcmV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      CarauselList("Japan", true,
                          "https://images.unsplash.com/photo-1554797589-7241bb691973?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fHRva3lvJTIwY2l0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      CarauselList("Indonesia", false,
                          "https://images.unsplash.com/photo-1592106574625-0a404da5fba3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Ym9yb2J1ZHVyJTIwdGVtcGxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Recommended Space",
                  style: titleBody,
                ),
                SizedBox(height: 15),
                Column(
                  children: <Widget>[
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: (MediaQuery.of(context).orientation ==
                              Orientation.landscape)
                          ? 2
                          : 1,
                      childAspectRatio: (MediaQuery.of(context).orientation ==
                              Orientation.landscape)
                          ? 2.2
                          : 2.4,
                      mainAxisSpacing: 0,
                      padding: EdgeInsets.all(0),
                      children: List.generate(Space.getLenght(), (index) {
                        return ListSpace(
                            Space.getData(index)[0],
                            Space.getData(index)[1],
                            Space.getData(index)[2],
                            Space.getData(index)[3],
                            Space.getData(index)[4]);
                      }),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 90,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryOrange.withOpacity(0.15)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1580584126903-c17d41830450?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDB8fGFpfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "User A.I fot better place",
                            style: titleList,
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Learn more",
                            style: TextStyle(
                                color: primaryOrange,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "Ongoing Events",
                  style: titleBody,
                ),
                SizedBox(
                  height: 6,
                ),
                GridView.count(
                  childAspectRatio: 3.2,
                  crossAxisSpacing: 20,
                  padding: EdgeInsets.all(0),
                  crossAxisCount: (MediaQuery.of(context).orientation ==
                          Orientation.landscape)
                      ? 2
                      : 1,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(Event.getLenght(), (index) {
                    return EventsList(Event.getData(index)[0],
                        Event.getData(index)[1], Event.getData(index)[2]);
                  }),
                ),
                SizedBox(height: 80)
              ],
            ),
          ),
        )),
        floatingActionButton: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 65,
          decoration: BoxDecoration(
              color: primaryGreyLight, borderRadius: BorderRadius.circular(22)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconFooter(Icons.home, true),
              IconFooter(Icons.email, false),
              IconFooter(Icons.article, false),
              IconFooter(Icons.thumb_up, false)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
