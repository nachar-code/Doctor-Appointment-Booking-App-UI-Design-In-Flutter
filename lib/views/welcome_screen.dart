
import 'package:doctor_appointment_booking_app_ui_design_in_flutter/constants/colors.dart';
import 'package:doctor_appointment_booking_app_ui_design_in_flutter/views/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              pColor.withOpacity(0.6),
              pColor,
            ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
            )
        ),
        child:  Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('assets/doctors.png'),
              ),
              const SizedBox(height: 50,),
              const Text('Doctors Online', style: TextStyle(
                fontSize: 35,fontWeight: FontWeight.bold,
                color: whiteColor,
                letterSpacing: 1,
                wordSpacing: 2,
              ),),
              const SizedBox(height: 10,),
              const Text('Appoint your Doctor',style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500,
                color: whiteColor,
              ),),
             // const SizedBox(height: 60,),
             const SizedBox(height: 60,),
              // Button with design with material
              Material(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen(),));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    child: const Text('Let\'s Go', style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: pColor,

                    ),),

                  ),
                ),
              ),
              const SizedBox(height: 60,),
              Image.asset('assets/lined heart.png',color: whiteColor,scale: 2,),
              
          ],
        ),
      ),
    );
  }
}