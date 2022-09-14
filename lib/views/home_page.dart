import 'package:flutter/material.dart';
import 'package:travel_app_ui/const/colors.dart';
import 'package:travel_app_ui/const/const.dart';
import 'package:travel_app_ui/const/style.dart';
import '../const/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.darkSecondaryColor,
              AppColor.lightTertiaryColor,
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, color: Colors.white38,size: 40,),
            Icon(Icons.place, color: AppColor.primaryColor,size: 40,),
            Icon(Icons.person, color: Colors.white38,size: 40,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColor.secondaryColor,
              AppColor.lightTertiaryColor
            ])),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            customAppbar(),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destination.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                    child: destinationCard(
                        context, destination[index]['imagePath']),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 25, top: 25, right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PrimaryText(
                    text: 'Hot Destination',
                    size: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primaryColor,
                  ),
                  PrimaryText(
                    text: 'More',
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white38,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotDestination.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                    child: hotDestinationCard(
                        context,
                        hotDestination[index]['imagePath'],
                        hotDestination[index]['placeName'],
                        hotDestination[index]['placeCount']),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  bottom: 25, top: 25, right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PrimaryText(
                    text: 'visitor Review',
                    size: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primaryColor,
                  ),
                  PrimaryText(
                    text: '22 review',
                    size: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white38,
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/man.jpeg')
                      )
                    ),
                  ),
                  const SizedBox(width: 10,),
                 SizedBox(
                   width: MediaQuery.of(context).size.width - 100,
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: const [
                           PrimaryText(
                             text: 'Tayeb Ahmed',
                             size: 14,
                             fontWeight: FontWeight.w500,
                             color: AppColor.primaryColor,
                           ),
                           PrimaryText(
                             text: 'jan 25',
                             size: 12,
                             fontWeight: FontWeight.w300,
                             color: Colors.white38,
                           )
                         ],
                       ),
                       const SizedBox(height: 10,),
                       const PrimaryText(
                         text: 'In publishing and graphic design, Lorem ipsum is a placeholder'
                             ' text commonly used to demonstrate the visual form of a'
                             ' document or a typeface without relying on meaningful content.'
                             ' Lorem ipsum may be used as a placeholder before final copy is'
                             ' available.',
                         size: 12,
                         color: Colors.white54,
                         fontWeight: FontWeight.w400,
                       )
                     ],
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
