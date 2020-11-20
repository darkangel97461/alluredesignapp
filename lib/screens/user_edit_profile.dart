import 'package:flutter/material.dart';

//===============MY OWN IMPORTS======================
import 'package:alluredesigns/components/constants.dart';
import 'package:badges/badges.dart';
import 'package:alluredesigns/screens/change_password.dart';

class UserEditProfile extends StatefulWidget {
  @override
  _UserEditProfileState createState() => _UserEditProfileState();
}

class _UserEditProfileState extends State<UserEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: kAppBarIconTheme,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: kAppBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: kDefaultBorderRadius,
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20.0,
                      top: 20.0,
                    ),
                    child: Badge(
                      badgeColor: Colors.white,
                      elevation: 1.0,
                      badgeContent: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.edit),
                      ),
                      position: BadgePosition(top: 102.0, end: 10.0),
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('images/carousel1.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              ProfileLabel(label: " First Name :"),
              ProfileTextField(
                labelHint: "Enter Your First Name",
              ),
              ProfileLabel(label: " Last Name :"),
              ProfileTextField(
                labelHint: "Enter Your Last Name",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileLabel(label: " Phone Number :"),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 23.0,
                        bottom: 5.0,
                      ),
                      child: Text(
                        "Update",
                        style: TextStyle(
                          color: kOurThemeColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your Phone Number",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileLabel(label: " E-Mail ID :"),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 23.0,
                        bottom: 5.0,
                      ),
                      child: Text(
                        "Update",
                        style: TextStyle(
                          color: kOurThemeColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ProfileTextField(
                labelHint: "Enter Your E-Mail ID",
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangePasswordScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 170.0),
                  child: Material(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    elevation: 0.5,
                    child: Container(
                      height: 50.0,
                      margin: EdgeInsets.only(
                        left: 15.0,
                        right: 20.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Text(
                          " Change Password",
                          style: TextStyle(
                            fontFamily: "DidactGothic",
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: kOurThemeColor,
          height: 70.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "SAVE",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: "Raleway",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileLabel extends StatelessWidget {
  final String label;
  ProfileLabel({
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        bottom: 10.0,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: "DidactGothic",
        ),
      ),
    );
  }
}

class ProfileTextField extends StatefulWidget {
  final labelHint;
  ProfileTextField({
    @required this.labelHint,
  });
  @override
  _ProfileTextFieldState createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: 20.0,
            left: 20.0,
          ),
          child: TextField(
            style: TextStyle(
              height: 1.0,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.grey.shade300,
              hintText: widget.labelHint,
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 10.0,
              ),
              contentPadding: EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
