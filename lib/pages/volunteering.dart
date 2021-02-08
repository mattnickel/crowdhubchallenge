import 'package:crowdhubtest/models/event_model.dart';
import 'package:crowdhubtest/services/api_calls.dart';
import 'package:crowdhubtest/widgets/event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Volunteering extends StatefulWidget {

  final String filterValue;
  final String filterName;

  Volunteering({ this.filterValue, this.filterName});
  @override
  _VolunteeringState createState() => _VolunteeringState();
}

class _VolunteeringState extends State<Volunteering> {
  String selectedDate;
  String selectedDateString;
  List events;
  List filteredEvents;
  DateTime _pickedDate;
  _filterEvents(filterValue){
    parseDate(date){
      String newDate = DateFormat.yMd().format(DateTime.parse(date));
      return newDate;
    }
    filteredEvents= events.where((i)=> parseDate(i.contentDateStart)==filterValue).toList();
  }

  @override
  void initState() {
    getEvents(http.Client()).then((data){
     setState((){
       events = data;
       filteredEvents = data;
     });
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          // automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: ImageIcon(
              AssetImage("assets/images/Icon_Hamburger.png"),
              color: Colors.black54,
              size: 10,
            ),
          ),
          flexibleSpace: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top:60),
                  height: 94,
                  child: Text("Find a Volunteering Event", style: TextStyle(color:Colors.black87),)),
              Container(
                  height:50,
                  padding: EdgeInsets.symmetric(horizontal:20),
                  width:double.infinity,
                  color:Colors.black12,
                  child: FlatButton(
                    onPressed: (){
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2022, 6, 7),
                          theme: DatePickerTheme(
                              headerColor: Colors.black26,
                              backgroundColor: Colors.white,
                              itemStyle: TextStyle(
                                  color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 18),
                              doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                          onChanged: (date) {
                            setState(() {
                              selectedDate = DateFormat.yMd().format(date);
                              print(selectedDate);
                              selectedDateString = DateFormat.yMd().format(date).toString();
                            });
                            _filterEvents(selectedDate);
                          },  currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child:  Row(
                      children: [
                        Container(
                            width: 200,
                            child: Text( selectedDateString==null ?
                            "All Results" : selectedDateString,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic
                              ),)
                        ),
                        Spacer(),
                        Container(
                          height: 25,
                          width:25,
                          child: ImageIcon(
                            AssetImage("assets/images/filters.png"),
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  )

              )],
          ),
        ),
        body: Container(
          child:
              ListView.builder(
                itemCount: filteredEvents.length,
                itemBuilder: (context, index) {
                  return EventCard(event:filteredEvents[index]);
                }
              )
        ),
      );
  }
}