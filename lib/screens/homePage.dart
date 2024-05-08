import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            myWidget(icon: myList1),
            myWidget(icon: myList2),
            myWidget(icon: myList3),
            myWidget(icon: myList4),
            myWidget(icon: myList5),
          ],
        ),
      ),
    );
  }
}
Widget myWidget({required IconData icon}){
  return Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(10),
              
              decoration: BoxDecoration(
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(10, 10)
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                size: 35,
              ),
            );
}
List<IconData> myList1 = [
  Icons.add,
  Icons.ac_unit,
  Icons.access_alarm,
  Icons.access_time,
  Icons.accessibility
];
List<IconData> myList2 = [
  Icons.accessible,
  Icons.zoom_out_sharp,
  Icons.zoom_out_map_rounded,
  Icons.zoom_in_map_sharp,
];
List<IconData> myList3 = [
  Icons.yard_outlined,
  Icons.wysiwyg_sharp,
  Icons.wifi_tethering_sharp,
  Icons.wifi_protected_setup_sharp,
];
List<IconData> myList4 = [
  Icons.wind_power,
  Icons.workspaces_sharp,
  Icons.wrong_location_rounded,
  Icons.youtube_searched_for
];
List<IconData> myList5 = [
  Icons.wrap_text_rounded,
  Icons.workspace_premium_rounded,
  Icons.work_outlined,
  Icons.work_off_outlined
];
