import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/IMG_0899.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mustafa Gumustas',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'mustafagumustas6@gmail.com',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          )),
                      height: 50,
                      width: 500,
                      child: Center(
                        child: Text(
                          'Update to Premium',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ProfileMenuItem(
                        text: "Your order history",
                        icon: Icons.shopping_bag_outlined,
                        arrowShown: true),
                    SizedBox(height: 20),
                    ProfileMenuItem(
                        text: "Help and Support ",
                        icon: Icons.help_outline,
                        arrowShown: true),
                    SizedBox(height: 20),
                    ProfileMenuItem(
                        text: "Load gift voucher",
                        icon: Icons.card_giftcard_outlined,
                        arrowShown: true),
                    SizedBox(height: 20),
                    ProfileMenuItem(
                        text: "Logout",
                        icon: Icons.logout_outlined,
                        arrowShown: false),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(
      {required this.text, required this.icon, required this.arrowShown});

  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          )),
      height: 50,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                '$text',
                style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          arrowShown
              ? Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}