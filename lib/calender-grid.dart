import 'package:flutter/material.dart';

class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    var dayss = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", '', '', '', '', '1',
      '2', '3', '4', '5', '6', '7', '8',
      '9', '10', '11', '12', '13', '14', '15',
      '16', '17', '18', '19', '20', '21', '22',
      '23', '24', '25', '26', '27', '28', '29',
      '', '', '', '', '', '', ''];
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/bg.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(Icons.calendar_month),
                Text(
                  "February 2024 Calendar",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4D4500)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
                itemCount: dayss.length,
                itemBuilder: (context, index) {
                  final color = index < 7 ? Colors.blue : (index==4||index==12||index==19||index==26 ||index==33)?Colors.red:Colors.black;
                  final fontSize = index < 7 ? 18.0:16.0;             
                  final fontweight = index < 7 ? FontWeight.bold: FontWeight.w700;

                  return Text(dayss[index],style:TextStyle(color: color,fontSize:fontSize,fontWeight: fontweight) ,);
                },
                
              ),
            ),
          ],
        ),
      )),
    );
  }
}
