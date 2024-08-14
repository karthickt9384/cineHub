import 'package:cinehub/dummy_data/trailer_list_dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model_class/trailer_list_model.dart';

class TrailerListDesign extends StatefulWidget {
  const TrailerListDesign({super.key});

  @override
  State<TrailerListDesign> createState() => _TrailerListDesignState();
}

class _TrailerListDesignState extends State<TrailerListDesign> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TrailerListModel listft =
        TrailerListModel.fromJson(TrailerListDummy.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listft.title,
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
            listft.icon,
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
                  hintText: 'Search Trailer',
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
              itemCount: 3,
              itemBuilder: (BuildContext context, int tindex) {
                TrailerListModel listft = TrailerListModel.fromJson(
                    TrailerListDummy.jsonData[tindex]);
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (tindex == 0) {
                          context.go('/trailer_screen_1_design');
                        } else if (tindex == 1) {
                          context.go('/trailer_screen_2_design');
                        } else if (tindex == 2) {
                          context.go('/trailer_screen_3_design');
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          height: 300,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2),
                            image: DecorationImage(
                              image: AssetImage(listft.imagepath),
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
