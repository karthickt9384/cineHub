import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeatSelectingDesign extends StatefulWidget {
  const SeatSelectingDesign({super.key});

  @override
  State<SeatSelectingDesign> createState() => _SeatSelectingDesignState();
}

class _SeatSelectingDesignState extends State<SeatSelectingDesign> {
  int index = 0;

  int? selectedIndex;
  Set<int> selectedIndicesOne = {};
  Set<int> selectedIndicesTwo = {};
  Set<int> selectedIndicesThree = {};

  final List<String> primeSeats = [
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
    '1',
    '2',
    '3',
    '4',
  ];

  final List<String> classicSeats = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Seat Selecting",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.go('/select_seat_date_design/:fromWhere');
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Rs.200 - ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "PRIME",
                    style: TextStyle(
                      color: Colors.red.shade900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Container(
                      height: 200,
                      width: 160,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1,
                          crossAxisSpacing: 0,
                        ),
                        itemCount: primeSeats.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedIndicesOne.contains(index)) {
                                  selectedIndicesOne
                                      .remove(index); // Deselect the item
                                } else {
                                  selectedIndicesOne
                                      .add(index); // Select the item
                                }
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: selectedIndicesOne.contains(index)
                                          ? Colors.green.shade900
                                          : Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        primeSeats[index],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Container(
                      height: 200,
                      width: 160,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1,
                          crossAxisSpacing: 0,
                        ),
                        itemCount: primeSeats.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedIndicesTwo.contains(index)) {
                                  selectedIndicesTwo
                                      .remove(index); // Deselect the item
                                } else {
                                  selectedIndicesTwo
                                      .add(index); // Select the item
                                }
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: selectedIndicesTwo.contains(index)
                                          ? Colors.green.shade900
                                          : Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        primeSeats[index],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Rs.95.12 - ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "CLASSIC",
                    style: TextStyle(
                      color: Colors.red.shade900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 8,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 0,
                  ),
                  itemCount: classicSeats.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIndicesThree.contains(index)) {
                            selectedIndicesThree
                                .remove(index); // Deselect the item
                          } else {
                            selectedIndicesThree.add(index); // Select the item
                          }
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: selectedIndicesThree.contains(index)
                                  ? Colors.green.shade900
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                classicSeats[index],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Container(
                  height: 45,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/payment_method_page_design');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
