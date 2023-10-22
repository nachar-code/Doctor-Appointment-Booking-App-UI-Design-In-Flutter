import 'package:doctor_appointment_booking_app_ui_design_in_flutter/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointMentScreen extends StatelessWidget {
  const AppointMentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height/2.1,
              decoration: const BoxDecoration(
             image: DecorationImage(
             image: AssetImage('assets/doctor1.jpg'),
              fit: BoxFit.cover, // You can choose the appropriate fit option
                                ),
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),  
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        pColor.withOpacity(0.9),
                        pColor.withOpacity(0.0),
                        pColor.withOpacity(0.1),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 30,left: 10,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [BoxShadow(
                                  color: sdColor,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),]
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_back, size: 28, color: pColor,),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print('Pressed');
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [BoxShadow(
                                  color: sdColor,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),]
                              ),
                              child: const Center(
                                child: Icon(Icons.favorite_outline, size: 28, color: pColor,),
                              ),
                            ),
                          ),
                          ],
                      ),
                      ),
                    const SizedBox(height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Patients', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),),
                            SizedBox(height: 10,),
                            Text('1.8k', style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),),

                          ],
                        ),
                        //................
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Experience', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),),
                            SizedBox(height: 10,),
                            Text('10 years', style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),),

                          ],
                        ),
                        // ............................
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Ratings', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),),
                            SizedBox(height: 10,),
                            Text('4.9', style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),),

                          ],
                        ),
                        // ............................
                      ],
                    ),),

                    ],
                  ),
                ),
            ),
          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dr. Shanal',
              style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500,
                color: pColor,
              ),
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Icon(MdiIcons.heartPlus, color: Colors.red,size: 28,),
                const SizedBox(width: 5,),
                Text('Surgeon', style: TextStyle(
                  fontSize: 17,
                  color: blckColor.withOpacity(0.6),
                ),),
              ],
            ),
            const SizedBox(height: 15,),
            Text('Someone just used your password to try to sign in to your account. Google blocked them, but you should check what happened.',
            style: TextStyle(fontSize: 17,fontWeight:FontWeight.w500 ,color: blckColor.withOpacity(0.6),),),
            const SizedBox(height: 15,),
            Text('Book a date', style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600,
              color: blckColor.withOpacity(0.7),
            ),),
            const SizedBox(height: 5,),
            SizedBox(
              height: 70,
              child: ListView.builder(
                itemCount: 9,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          decoration: BoxDecoration(
                            color: index ==1 ? pColor : pColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: sdColor,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('${index + 8}', style: TextStyle(
                                color: index ==1 ? whiteColor : whiteColor.withOpacity(0.6),
                              ),),
                              Text('Dec', style: TextStyle(
                                color: index ==1 ? whiteColor : whiteColor.withOpacity(0.6),
                                fontSize: 17, fontWeight: FontWeight.w500,
                              ),),
                      
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  );
                },),
            ),
            Text('Book Time', style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600,
              color: blckColor.withOpacity(0.7),
            ),),
            const SizedBox(height: 5,),
            SizedBox(
              height: 70,
              child: ListView.builder(
                itemCount: 9,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          decoration: BoxDecoration(
                            color: index ==2 ? pColor : pColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: sdColor,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('${index + 8}:00 AM', style: TextStyle(
                                color: index ==1 ? whiteColor : whiteColor.withOpacity(0.6),
                              ),),
                              
                      
                            ],
                          ),
                        ),
                      ),
                      
                     
                    ],
                  );
                },),
            ),

           const SizedBox(height: 10,),
                      // Button with design with material
              Material(
                color: pColor,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    child: const Text('Book Appointment', style: TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold,
                      color: whiteColor,
                      

                    ),
                    textAlign: TextAlign.center,),

                  ),
                ),
              ),

          ],
          ),
          ),
          ],
        ),
      ),
    );
  }
}