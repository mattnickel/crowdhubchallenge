import 'package:crowdhubtest/models/event_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class EventCard extends StatelessWidget{
  Content event;
  EventCard({this.event});


  @override
  Widget build(BuildContext context) {;
    // print();
    String photo = "https://crowdhubharding.s3-us-west-2.amazonaws.com/"
        + event.contentImage;
    String startDate = DateFormat.yMMMd().format(DateTime.parse(event.contentDateStart)).toString();
    String endDate = DateFormat.yMMMd().format(DateTime.parse(event.contentDateEnd)).toString();
    return Container(
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
      padding: EdgeInsets.only(top:20, left:20, right:20, bottom:10),
      color: Colors.white,
      child: Column(
        children: [
          Container(

              width: double.infinity,
              child: Text(event.contentName,
                overflow: TextOverflow.ellipsis,)),
          Container(
              width:double.infinity,
              child:Text(event.contentDateLiteralReleased,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              )
          ),
          Container(
            // margin: const EdgeInsets.only(top:10.0),
            padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 235,


            child: Image.network(
                photo,
                fit: BoxFit.cover)
          ),
          Container(
              width:double.infinity,
              height: 38,
              child:Text(event.contentSocialDescription,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(

                  fontSize: 11,
                ),
              )
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Text(startDate == endDate ? endDate : "$startDate - $endDate", style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w800
                )),
                Spacer(),
                FlatButton.icon(
                  icon: ClipOval(
                    child: Material(
                      color: Theme.of(context).accentColor, // button color
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 12,
                            width: 12,
                          child: ImageIcon(
                            AssetImage("assets/images/Icon_volunteer_small.png"),
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ),
                  ),
                    label: Text("Learn More",
                      style: TextStyle(
                        fontSize:9,
                        fontWeight: FontWeight.w800,
                        color:Theme.of(context).accentColor,
                      fontStyle: FontStyle.italic),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}