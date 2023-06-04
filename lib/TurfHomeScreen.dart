import 'package:flutter/material.dart';
import 'package:nearbyturfs/Notifications.dart';
import 'package:nearbyturfs/Trash/homepage.dart';
import 'package:nearbyturfs/TurfDataModel.dart';
import 'package:nearbyturfs/about_us_page.dart';
import 'package:nearbyturfs/updates_page.dart';

import 'MyDrawerList.dart';
import 'TurfDetails.dart';

class TurfHomeScreen extends StatefulWidget {
  const TurfHomeScreen({Key? key}) : super(key: key);

  @override
  State<TurfHomeScreen> createState() => _TurfHomeScreenState();
}

class _TurfHomeScreenState extends State<TurfHomeScreen> {

  static List<String> turfname = [
    "Asma Turf Ground",
    "Greens Kickoff - Football Turf",
    "Goal Town Turf",
    "Lakana Club Socco",
    "Lakana club socco 2 manathmangalam mannarmala road",
    "Seven’s Football Turf-Moulana college of pharmacy",
    "Club one Perithalmanna",
    "Era Turf Football Court-Gatupadi Mannumkulam",
    "Olympia Turf",
  ];

  static List url = [
    "https://lh5.googleusercontent.com/p/AF1QipORbzni-mWbnauod-WuqABIC-SWSSEeSCxBlw5q=w426-h240-k-no",
    "https://i.postimg.cc/xTcsJvNL/Screenshot-20190322-184120-1.jpg",
    "https://lh5.googleusercontent.com/p/AF1QipPt5Lqduhr29o1QStHsuL6qMCXHYCgka6_kVpDs=w426-h240-k-no",
    "https://scontent.fcok10-4.fna.fbcdn.net/v/t1.6435-9/50425944_2164354116919395_1055732072645132288_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=GbNx5xuherMAX9gP7PU&_nc_ht=scontent.fcok10-4.fna&oh=00_AfAd5bmpc4XdsYmycouV_yR5yAfyxRf2a8Ulz1u5vtRdQQ&oe=64A04EAD",
    "https://scontent.fcok10-4.fna.fbcdn.net/v/t1.6435-9/55600677_2253867061301433_2504006117282021376_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=Clwd5SpalEcAX-rtPlP&_nc_ht=scontent.fcok10-4.fna&oh=00_AfD_sjuSvSXQCI7y6E8_qLAYeEEFIpOdaK8UYW2E8FqHww&oe=64A03CFF",
    "http://www.minpspharmacy.com/wp-content/uploads/2020/08/foodball11.jpg",
    "https://content.jdmagicbox.com/comp/malappuram/w4/9999px483.x483.191218200049.h2w4/catalogue/club-one-perintalmanna-malappuram-football-turf-grounds-w3awuhiucp-250.jpg",
    "https://lh5.googleusercontent.com/p/AF1QipNcjbbhI4LxuNbH2ihCeeVufo58BEpx8vGrG8sx=w439-h240-k-no",
    "https://lh5.googleusercontent.com/p/AF1QipNk0_dhLSjJV8PRFwq-6m6oW-J5klkRBemC8AK6=w408-h306-k-no",
  ];

  static List<String> address = [
    "Al Shifa Hospital Rd, Valiyangadi, Perintalmanna, Kerala 679322",
    "Pattambi Rd, near Post Office, Shanti Nagar, Perintalmanna, Kerala 679322",
    "Goal Town Turf, Valamboor Poopalam Rd, Perintalmanna, Kerala 679322\n Contact number : 08129432020",
    "X6M9+86W, Unnamed Road, Padippura, Perintalmanna, Kerala 679322",
    "X6XP+28H, Manathmangalam - Mannarmala Rd, Mannarmala, Kerala 679322",
    "X6J6+PHP, Angadipuram, Kerala 679322",
    "Perithalmanna, Perintalmanna, Kerala 679322 \n Contact number : 09539212111",
    "X56H+CWV, Mannumkulam-Gatumpadi Rd, Gatumpadi, Mannumkulam, Kerala 679321",
    "X56M+WXW, Puthanangadi, Kerala 679321",
  ];

  final List<TurfDataModel> turflist = List.generate(
      turfname.length, (index) =>
      TurfDataModel(
          '${turfname[index]}',
          '${url[index]}',
          '${turfname[index]}',
          '${address[index]}'
      ));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Turf"),
        centerTitle: true,
      ),

      drawer: MyNavigationDrawer(),

      body: ListView.builder(
          itemCount: turflist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(turflist[index].name, style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),),
                leading: SizedBox(width: 50, height: 50,
                  child: Image.network(turflist[index].imgurl),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          TurfDetails(turfDataModel: turflist[index],)));
                },
              ),
            );
          }),
    );
  }
}
class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 10,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: ()=> Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => TurfHomeScreen(),)
          ),
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none_outlined),
          title: const Text('Notifications'),
          onTap: (){
            Navigator.pop(context);

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> NotificationPage(),
            ),
            );
          },
        ),
        Divider(color: Colors.red,),
        ListTile(
          leading: const Icon(Icons.update_outlined),
          title: const Text('Updates'),
          onTap: (){
            Navigator.pop(context);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> Updates(),
            ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.contact_support_outlined),
          title: const Text('About Us'),
          onTap: (){
            Navigator.pop(context);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> AboutUs(),
            ),
            );
          },
        ),
      ],
    ),
  );
}
