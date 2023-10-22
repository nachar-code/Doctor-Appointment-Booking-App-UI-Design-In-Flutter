
import 'package:doctor_appointment_booking_app_ui_design_in_flutter/constants/colors.dart';
import 'package:doctor_appointment_booking_app_ui_design_in_flutter/widgets/doctor_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Icon> catIcons = [
   Icon(MdiIcons.tooth,size: 32, color: pColor,),
   Icon(MdiIcons.heartPlus,size: 32, color: pColor,),
   Icon(MdiIcons.brain,size: 32, color: pColor,),
   Icon(MdiIcons.eye,size: 32, color: pColor,),
   Icon(MdiIcons.earHearing,size: 32, color: pColor,),
  ];

 final List<String> catNames =[
                                'Dental',
                                'Heart',
                                'Brain',
                                'Eye',
                                'Ear',
                                        ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.withOpacity(.3),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient:LinearGradient(colors:[
                  pColor.withOpacity(0.6),
                  pColor,
                ],
                begin: Alignment.topLeft, end: Alignment.bottomLeft ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Section
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 15,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Circleavatar and notifications icon start
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/doctor1.jpg'),
                            ),
                            Icon(Icons.notification_add,size: 35, color: Colors.white,),
                          ],
                        ),
                        // Circleavatar and notifications icon end.
      
                        const SizedBox(height: 10.0,),
      
                        const Text('Assalamualikum',style: TextStyle(
                          color: whiteColor,
                          fontSize: 18, fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),),
      
                      const SizedBox(height: 10.0,),
      
                        const Text('Your Health is Our \n First Priority', style: TextStyle(
                          color: whiteColor,
                          fontSize: 25, fontWeight: FontWeight.w500,
                        ),),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [BoxShadow(
                              color: sdColor,
                              blurRadius: 6,
                              spreadRadius: 3,
                            ),]
                          ),
                          
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 28,
                                  ),
                                  hintText: 'Search here..',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),),
                        ),
                    

                      ],
                    ),),

                 // Top Section End here
                
                // Category section start here.

                  Padding(padding: const EdgeInsets.only(left: 15,),
                    child:  Text('Categories', style: TextStyle(
                    fontSize: 28, fontWeight: FontWeight.w500,
                    color: blckColor.withOpacity(0.7),
                    
                ),
                ),), 
                const SizedBox(height: 15,),  
                Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catNames.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              shape: BoxShape.circle,
                              boxShadow: const [
                                 BoxShadow(
                                 color: sdColor, blurRadius: 4,spreadRadius: 3,
                                ),
                              ],
                            ), 
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          Text(catNames[index], style: TextStyle(
                            color: blckColor.withOpacity(0.7),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),

                        ],
                      );
                    },
                  ),
                ),
                // category section ends here

              // recomanded Doctor section start here
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Recomanded Doctor\'s', style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500,
                    color: blckColor.withOpacity(0.7),
                  ),),),
                  // Doctor card widget
                  const DoctorSection(),
                  // recomanded doctor section end here
            ],
                  
                ),
              ),
               
          ],
        ),
      ),
    );
  }
}