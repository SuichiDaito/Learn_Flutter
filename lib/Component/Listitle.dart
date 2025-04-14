import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/Component/Button/ButtonComplete.dart';
import 'package:test1/Component/Button/ButtonSearching.dart';

class Listitle extends StatefulWidget {
  const Listitle({
    super.key,
    required this.id,
    required this.state,
    required this.state_korean,
  });

  final String id;
  final String state;
  final String state_korean;

  @override
  State<Listitle> createState() => _Listtitle();
}

class _Listtitle extends State<Listitle> {

  int checkColor(String state) {
    if (state == "Searching") {
      return 1;
    } else if (state == "Active") {
      return 2;
    } else if (state == "Completed") {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 320,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.id,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xFF313F46),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDB1F21),
                    padding: const EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    widget.state_korean,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      checkColor(widget.state) == 1
                          ? Color(0xFFF5F5F5)
                          : checkColor(widget.state) == 2
                          ? Color(0xFFC6EDD8)
                          : checkColor(widget.state) == 3
                          ? Color(0xFFE0EAF8)
                          : Color(0xFFF5F5F5),
                  padding: const EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  widget.state,
                  style: TextStyle(
                    color:
                        checkColor(widget.state) == 1
                            ? Colors.black
                            : checkColor(widget.state) == 2
                            ? Color(0xFF3D9650)
                            : checkColor(widget.state) == 3
                            ? Color(0xFF005085)
                            : Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          subtitle: Container(
            height: 290,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.payment_rounded,
                        color: Color(0xFFAEAEAE),
                        size: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "W34,000",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color(0xFF313F46),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date order",
                                style: TextStyle(
                                  color: Color(0xFFAEAEAE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "30/12/2025, 12:00 p.m",
                                style: TextStyle(
                                  color: Color(0xFF313F46),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vehicle",
                                style: TextStyle(
                                  color: Color(0xFFAEAEAE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "1 ton truck",
                                style: TextStyle(
                                  color: Color(0xFF313F46),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Icon(
                                Icons.album_rounded,
                                color: Colors.blue,
                                size: 28,
                              ),
                              Container(
                                height: 20, // CHIỀU CAO RÕ RÀNG
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1,
                                  width: 20,
                                ),
                              ),
                              Icon(
                                Icons.room_rounded,
                                color: Colors.red,
                                size: 27,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: SizedBox(
                            height: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Road A, Street B, Province C, City D",
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Road A, Street B, Province C, City Df",
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  checkColor(widget.state) == 1
                      ? buttonSearching(nameButton: "Driver info")
                      : checkColor(widget.state) == 2
                      ? buttonSearching(nameButton: "Tip driver")
                      : checkColor(widget.state) == 3
                      ? buttonComplete(
                        nameButton1: "Reorder",
                        nameButton2: "Receipt",
                      )
                      : buttonSearching(nameButton: "Tip driver"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
