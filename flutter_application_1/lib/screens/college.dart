import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IdentityCardScreen extends StatefulWidget {
  const IdentityCardScreen({super.key});

  @override
  State<IdentityCardScreen> createState() => _IdentityCardScreenState();
}

class _IdentityCardScreenState extends State<IdentityCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Front.png'),
            fit: BoxFit.cover,
          ),
        ),
        //Create a container for personal information
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50), // Space at the top
              Text(
                'IMCC ID Card',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 93, 125, 165),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Space between title and ID number
              //profile picture
              CircleAvatar(
                radius: 75,
                backgroundColor: Color.fromARGB(255, 159, 209, 236),
                backgroundImage: AssetImage('/images/Ajinkya.jpg'),
              ),
              SizedBox(height: 20), // Space between name and ID number
              Text(
                'Roll Number: 2401199',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 35, 126, 217),
                ),
              ),
              SizedBox(height: 20), // Space between ID number and name
              Text(
                'Name: Ajinkya Thakur',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 110, 118, 157),
                ),
              ),
              SizedBox(height: 20), // Space between name and address
              Text(
                'Date of Birth: 06/08/2002',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 99, 104, 138),
                ),
              ),
              SizedBox(height: 20), // Space between ID number and address
              Text(
                'Address: Ganadhish Sankul B wing, Flat no 605, Hingne Khurd, Pune',
                textAlign: TextAlign.center,
                style: GoogleFonts.sacramento(
                  fontSize: 30,
                  color: Color.fromARGB(255, 120, 105, 146),
                ),
              ),
              SizedBox(height: 20), // Space between ID number and address
              Text(
                'Phone: +91 9922111646',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 203, 106, 198),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
