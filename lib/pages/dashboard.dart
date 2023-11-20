import 'package:fleet_dashboard/components/bottom_nav_bar.dart';
import 'package:fleet_dashboard/components/fleet_status_tile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Fleet Dashboard",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(
                'Hi Emma',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red[400],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.fact_check_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text("PENDING APPROVALS",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("04",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Divider(thickness: 1, color: Colors.grey[300]),
          const SizedBox(height: 10),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Current Fleet Status',
                    style: TextStyle(fontSize: 18)),
              )),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FleetStatusTile(label: 'SERVICING', count: 2),
              SizedBox(width: 20),
              FleetStatusTile(label: 'WOF/COF', count: 3),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FleetStatusTile(label: 'REGISTRATION', count: 0),
              SizedBox(width: 20),
              FleetStatusTile(label: 'EXPIRED CONTRACTS', count: 2),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FleetStatusTile(label: 'VEHICLE OFF-ROAD', count: 2),
              SizedBox(width: 20),
              FleetStatusTile(label: 'ROAD USER CHARGES', count: 3),
            ],
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.blue, width: 1.5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  Text("VEHICLES ON ORDER",
                      style: TextStyle(color: Colors.blue, fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("02",
                        style: TextStyle(color: Colors.blue, fontSize: 20)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_in_talk_outlined,
                  size: 25,
                ),
                SizedBox(width: 15),
                Text(
                  "Call Account Manager",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
