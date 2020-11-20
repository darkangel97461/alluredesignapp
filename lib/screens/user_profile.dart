import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//===================MY OWN IMPORTS========================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/components/bars.dart';
import 'package:alluredesigns/screens/user_edit_profile.dart';
import 'package:alluredesigns/screens/user_shipping_address.dart';

void main() {
  runApp(
    MaterialApp(
      home: UserProfileScreen(),
    ),
  );
}

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "PROFILE",
          style: kAppBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  radius: 60.0,
                  child: Icon(
                    Icons.person,
                    size: 80.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Anandhu PA",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: "DidactGothic",
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserEditProfile(),
                      ),
                    );
                  },
                  child: Bars(
                    icons: Icons.edit,
                    text: 'Edit Profile',
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserShippingAddress(),
                      ),
                    );
                  },
                  child: Bars(
                    icons: Icons.location_on,
                    text: 'Shipping Address',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.event_note,
                    text: 'My Orders',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.navigation,
                    text: 'Track My Order',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.help,
                    text: 'Help Centre',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.library_books,
                    text: 'Privacy Policy',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Bars(
                    icons: Icons.content_paste,
                    text: 'Terms & Conditions',
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.00, bottom: 0.00),
                      child: ListTile(
                        leading: Icon(Icons.person_add,
                            size: 35.0, color: Colors.grey.shade600),
                        title: Text(
                          'Follow us on Social Media',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 20.00,
                          ),
                        ),
                        trailing: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            iconSize: 40.0,
                            items: [
                              DropdownMenuItem(
                                child: Text("Facebook"),
                                value: 'Facebook',
                              ),
                              DropdownMenuItem(
                                child: Text("Instagram"),
                                value: 'Instagram',
                              ),
                            ],
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Bars(
                  icons: Icons.star_border,
                  text: 'Rate Us On PlayStore',
                ),
                Bars(
                  icons: Icons.live_help,
                  text: 'About Us',
                ),
                Bars(
                  icons: Icons.exit_to_app,
                  text: 'Sign Out',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
