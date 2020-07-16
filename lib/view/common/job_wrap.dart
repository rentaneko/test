import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';

Widget jobWrap() {
  return Container(
    margin: EdgeInsets.only(
        left: Dimens.size15, right: Dimens.size15, bottom: Dimens.size10, top: Dimens.size10),
    height: Dimens.size140,
    decoration: BoxDecoration(
      color: Colors.blue[50],
      border: Border.all(color: Colors.blue, width: Dimens.size2),
      borderRadius: BorderRadius.all(Radius.circular(Dimens.size5)),
    ),
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
              left: Dimens.size10,
              right: Dimens.size10,
              top: Dimens.size5,
              bottom: Dimens.size5),
          child: Text(
            "Job name",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: Dimens.size20),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: Dimens.size10, right: Dimens.size10),
          child: Text(
            "Company Name",
            style:
                TextStyle(fontWeight: FontWeight.w400, fontSize: Dimens.size17),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: Dimens.size10,
                    right: Dimens.size10,
                    top: Dimens.size5,
                    bottom: Dimens.size5),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: Dimens.size130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              "Location",
                              style: TextStyle(fontSize: Dimens.size16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Dimens.size130,
                      margin: EdgeInsets.only(top: Dimens.size15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.attach_money),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              "Salary",
                              style: TextStyle(fontSize: Dimens.size16, color: Colors.blue, fontStyle: FontStyle.italic),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: Dimens.size60,
                    right: Dimens.size10,
                    top: Dimens.size5,
                    bottom: Dimens.size5),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: Dimens.size130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.business_center),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              "Skill",
                              style: TextStyle(fontSize: Dimens.size16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Dimens.size130,
                      margin: EdgeInsets.only(top: Dimens.size15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.date_range),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              "12/12/2020",
                              style: TextStyle(fontSize: Dimens.size16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget jobWrapParams(String jobName, String companyName, String address, double salary, String skill, String createdDate) {
  return Container(
    margin: EdgeInsets.only(
        left: Dimens.size15, right: Dimens.size15, bottom: Dimens.size10, top: Dimens.size10),
    height: Dimens.size140,
    decoration: BoxDecoration(
      color: Colors.blue[50],
      border: Border.all(color: Colors.blue, width: Dimens.size2),
      borderRadius: BorderRadius.all(Radius.circular(Dimens.size5)),
    ),
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
              left: Dimens.size10,
              right: Dimens.size10,
              top: Dimens.size5,
              bottom: Dimens.size5),
          child: Text(
            jobName,
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: Dimens.size20),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: Dimens.size10, right: Dimens.size10),
          child: Text(
            companyName,
            style:
                TextStyle(fontWeight: FontWeight.w400, fontSize: Dimens.size17),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: Dimens.size10,
                    right: Dimens.size10,
                    top: Dimens.size5,
                    bottom: Dimens.size5),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: Dimens.size130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              address,
                              style: TextStyle(fontSize: Dimens.size16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Dimens.size130,
                      margin: EdgeInsets.only(top: Dimens.size15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.attach_money),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              "$salary \$",
                              style: TextStyle(fontSize: Dimens.size16, color: Colors.blue, fontStyle: FontStyle.italic),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: Dimens.size60,
                    right: Dimens.size10,
                    top: Dimens.size5,
                    bottom: Dimens.size5),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: Dimens.size130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.business_center),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              skill,
                              style: TextStyle(fontSize: Dimens.size16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Dimens.size130,
                      margin: EdgeInsets.only(top: Dimens.size15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.date_range),
                          Container(
                            margin: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              createdDate,
                              style: TextStyle(fontSize: Dimens.size16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
