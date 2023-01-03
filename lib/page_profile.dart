// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  List<String> items = [
    'Date of Birth',
    '05 / Nov /1995',
    '06 / Dec /1996',
    '07 / Jan /1997',
    '08 / Feb /1998',
    '09 / MAR /1999',
    '10 / APR /2000',
    '11 / MAI /2001',
    '12 / JUN /2002',
    '13 / JUI /2003',
  ];
  String? selectedItem = 'Date of Birth';

  List<String> monthly = [
    'Monthly Income',
    '£2,000 - £4,000',
    '£5,000 - £8,000',
    '£9,000 - £12,000',
  ];
  String? selectedmonthly = 'Monthly Income';

   List<String> monthlys = [
    'Not Available',
    ' £3,000',
    '£7,000',
    '£16,000',
  ];
  String? selectedmonthlys = 'Not Available';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Personal Data',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage:
                AssetImage("images/photo-1624225322900-690eab653586.webp"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                'Changer Picture',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your Name', border: InputBorder.none),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            width: 360,
            child: Center(
              child: DropdownButton<String>(
                underline: SizedBox(),
                isExpanded: true,
                iconSize: 30,
                iconEnabledColor: Colors.green,
                value: selectedItem,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        ))
                    .toList(),
                onChanged: ((item) => setState(() => selectedItem = item)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your Job', border: InputBorder.none),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)),
            width: 360,
            child: Center(
              child: DropdownButton<String>(
                underline: SizedBox(),
                isExpanded: true,
                iconSize: 30,
                iconEnabledColor: Colors.green,
                value: selectedmonthly,
                items: monthly
                    .map((monthly) => DropdownMenuItem<String>(
                          value: monthly,
                          child: Text(monthly),
                        ))
                    .toList(),
                onChanged: ((monthly) =>
                    setState(() => selectedmonthly = monthly)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)),
              width: 360,
              child: Center(
                child: DropdownButton<String>(
                  underline: SizedBox(),
                  isExpanded: true,
                  iconSize: 30,
                  iconEnabledColor: Colors.green,
                  value: selectedmonthlys,
                  items: monthlys
                      .map((monthlys) => DropdownMenuItem<String>(
                            value: monthlys,
                            child: Text(monthlys),
                          ))
                      .toList(),
                  onChanged: ((monthlys) =>
                      setState(() => selectedmonthlys = monthlys)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
