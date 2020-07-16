import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';

Widget jobInfor(String address, String jobName, String salary,
    String companyName, String companyAvt) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blue[50],
      borderRadius: BorderRadius.circular(Dimens.size5),
      boxShadow: [
        BoxShadow(
            color: Colors.blue[50].withOpacity(Dimens.opacity05),
            spreadRadius: Dimens.radius5,
            blurRadius: Dimens.radius7,
            offset: Offset(Dimens.size0, Dimens.size3))
      ],
    ),
    height: Dimens.size90,
    margin: EdgeInsets.only(top: Dimens.size5, bottom: Dimens.size5),
    padding: EdgeInsets.only(
        left: Dimens.size15,
        right: Dimens.size15,
        top: Dimens.size5,
        bottom: Dimens.size5),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: Dimens.size15,
                  ),
                  Text(
                    address,
                    style: TextStyle(fontSize: Dimens.size15),
                  )
                ],
              ),
              Text(
                jobName,
                style: TextStyle(
                    fontSize: Dimens.size18, fontWeight: FontWeight.bold),
              ),
              Text(
                salary,
                style: TextStyle(fontSize: Dimens.size15, color: Colors.blue),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: Dimens.size240,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.circular(Dimens.radius12),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: Dimens.radius10,
                            child: Image.asset(
                              companyAvt,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: Dimens.size15),
                            child: Text(
                              companyName,
                              style: TextStyle(fontSize: Dimens.size15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                            Icons.bookmark_border,
                            size: Dimens.size23,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: Dimens.size90,
          width: Dimens.size90,
          padding: EdgeInsets.all(Dimens.size5),
          child: Image.asset(
            companyAvt,
            fit: BoxFit.contain,
          ),
        )
      ],
    ),
  );
}
