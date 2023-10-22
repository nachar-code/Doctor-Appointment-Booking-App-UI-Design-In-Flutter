import 'package:doctor_appointment_booking_app_ui_design_in_flutter/constants/colors.dart';
import 'package:doctor_appointment_booking_app_ui_design_in_flutter/views/appointment_screen.dart';
import 'package:flutter/material.dart';

class DoctorSection extends StatelessWidget {
  const DoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
         return Column(
            children: [
              Container(
                height: 300,
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: whiteColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: sdColor,
                      blurRadius: 4,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: 
                            (context) =>const AppointMentScreen() ));
                          },
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              
                            ),
                            child: Image.asset('assets/doctor${index+1}.jpg',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,),

                          ), 
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: whiteColor.withOpacity(.9),
                              shape: BoxShape.circle,
                              boxShadow: const [BoxShadow(
                                color: sdColor,
                                blurRadius: 4,
                                spreadRadius: 4,
                              )]
                            ),
                            child: const Icon(Icons.favorite_border_outlined, color: pColor,),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 8,),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 5), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Dr. Shanal', style: TextStyle(
                        color: pColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('Surgeon',style: TextStyle(
                        fontSize: 16,
                        color: blckColor.withOpacity(0.7),
                      ),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber,),
                          const SizedBox(width: 8,),
                          Text('4.9',style: TextStyle(
                        fontSize: 14,
                        color: blckColor.withOpacity(0.7),
                      ),),
                        ],
                      ),
                      const SizedBox(height: 2,),
                    ],
                  ),),

                  ],
                ),
              ),
            ],
          );
        },),
    );
  }
}