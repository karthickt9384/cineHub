import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../dummy_data/concert_list_dummy.dart';
import '../model_class/concert_list_model.dart';

class ConcertListDesign extends StatefulWidget {
  const ConcertListDesign({super.key});

  @override
  State<ConcertListDesign> createState() => _ConcertListDesignState();
}

class _ConcertListDesignState extends State<ConcertListDesign> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    ConcertListModel listpt =
    ConcertListModel.fromJson(ConcertListDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listpt.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/dashboard_design');
          },
          icon: Icon(
            listpt.icon,
            color: Colors.white,
            size: 40,
          ),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Concerts',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 0.1,
                  ),
                  filled: true,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 17),
                  prefixIcon: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 38,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ConcertListDummy.jsonData.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int listindex) {
                ConcertListModel listpt = ConcertListModel.fromJson(
                    ConcertListDummy.jsonData[listindex]); // Use listindex here
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (listindex == 0) {
                          context.go('/concert_screen_1_design');
                        } else if (listindex == 1) {
                          context.go('/concert_screen_2_design');
                        } else if (listindex == 2) {
                          context.go('/concert_screen_3_design');
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          height: 175,
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: AssetImage(listpt.imagepath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
