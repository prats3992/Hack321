import 'package:flutter/material.dart';

class CustomAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFEEFBF0),
        padding: EdgeInsets.symmetric(vertical: 54.0, horizontal: 8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Gender'),
                subtitle: Text('Male'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Age'),
                subtitle: Text('25'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Match Search Distance'),
                subtitle: DropdownButton<String>(
                  value: '5 km', // Replace with your own logic
                  onChanged: (String? value) {
                    // Handle dropdown value change
                  },
                  items: <String>[
                    '5 km',
                    '10 km',
                    '15 km',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Features Access'),
                subtitle: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: false, // Replace with your own logic
                      onChanged: (bool? value) {
                        // Handle checkbox tap
                      },
                      activeColor: Colors.pink, // Set the tick color to pink
                    ),
                    Text('Free'),
                    Checkbox(
                      value: true, // Replace with your own logic
                      onChanged: (bool? value) {
                        // Handle checkbox tap
                      },
                      activeColor: Colors.pink, // Set the tick color to pink
                    ),
                    Text('Premium'),
                  ],
                ),
              ),
            ),
            // Add more list items for the drawer
Container(
  padding: EdgeInsets.symmetric(vertical: 8.0),
  child: ListTile(
    title: Text('Do you want premium?'),
    subtitle: ElevatedButton(
      onPressed: () {
        // Add your logic here
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text('Upgrade to Premium'),
    ),
  ),
),
            
          ],
        ),
      ),
    );
  }
}





class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void _showNotifications() {
    // Implement your logic to show notifications here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFEEFBF0), // Change the background color here
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/human.png', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: _openDrawer,
                        ),
                        IconButton(
                          icon: Icon(Icons.notifications_outlined),
                          onPressed: _showNotifications,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: CustomAppDrawer(), // Use the custom app drawer widget
    );
  }
}


