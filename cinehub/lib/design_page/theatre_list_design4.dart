import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../dummy_data/theatre_list_dummy_4.dart';
import '../model_class/theatre_list_model4.dart';
import '../theatre_list_checkbox/theatre_list_checkbox4.dart';

class TheatreListDesignFour extends StatefulWidget {
  const TheatreListDesignFour({super.key});

  @override
  State<TheatreListDesignFour> createState() => _TheatreListDesignFourState();
}

class _TheatreListDesignFourState extends State<TheatreListDesignFour> {
  int? selectedCheckboxIndex;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TheatreListPageFourModel tpage =
    TheatreListPageFourModel.fromJson(TheatreListFourDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {
            context.go('/theatre_list_design/:fromWhere');
          },
          icon: Icon(
            tpage.icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Text(
          tpage.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tpage.show,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: TheatreListFourDummy.jsonData.length,
                  itemBuilder: (BuildContext contex, int index) {
                    TheatreListPageFourModel tpage =
                    TheatreListPageFourModel.fromJson(
                        TheatreListFourDummy.jsonData[index]);
                    return Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          TheatreListCheckBoxFour(
                            isChecked: selectedCheckboxIndex == index,
                            onChanged: (bool? value) {
                              setState(() {
                                selectedCheckboxIndex =
                                value == true ? index : null;
                              });
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              height: 60,
                              width: 200,
                              decoration: BoxDecoration(
                                color: selectedCheckboxIndex == index
                                    ? Colors.blue
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      tpage.showtime,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      tpage.showsound,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 100, bottom: 50),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900],
                      ),
                      onPressed: () {
                        context.go('/select_seat_date_design/theatre_list_design4');
                      },
                      child: Text(
                        tpage.submit,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
