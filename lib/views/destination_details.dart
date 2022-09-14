import 'package:flutter/material.dart';
import 'package:travel_app_ui/const/colors.dart';
import 'package:travel_app_ui/const/const.dart';
import 'package:travel_app_ui/const/style.dart';

import '../const/widget.dart';

class DestinationDetail extends StatelessWidget {
  final String? imagePath;

  const DestinationDetail({Key? key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imagePath ?? '',
      child: Scaffold(
        floatingActionButton: ElevatedButton(
          style: TextButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width - 60, 56),
            backgroundColor: AppColor.lightSecondary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: () {},
          child: const Text(
            'Search location',
            style: TextStyle(fontSize: 20),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath ?? ''), fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    detailCustomAppbar(context),
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColor.secondaryColor,
                                AppColor.lightTertiaryColor
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35, right: 20, bottom: 20),
                        child: ListView(
                          children: [
                            const PrimaryText(
                              text: 'America',
                              size: 24,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primaryColor,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const PrimaryText(
                              text:
                                  'In publishing and graphic design, Lorem ipsum is a placeholder'
                                  ' text commonly used to demonstrate the visual form of a'
                                  ' document or a typeface without relying on meaningful content.'
                                  ' Lorem ipsum may be used as a placeholder before final copy is'
                                  ' available.',
                              size: 18,
                              color: Colors.white70,
                              fontWeight: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                PrimaryText(
                                  text: 'Tourist Places',
                                  size: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.primaryColor,
                                ),
                                PrimaryText(
                                  text: '18',
                                  size: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white38,
                                )
                              ],
                            ),
                            const SizedBox(height: 8,),
                            SizedBox(
                              height: 140,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: hotDestination.length,
                                itemBuilder: (context, index) {
                                  return hotDestinationCard(context,
                                      hotDestination[index]['imagePath']);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

Widget hotDestinationCard(BuildContext context, String? imagePath) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DestinationDetail(
                    imagePath: imagePath,
                  )));
    },
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          height: 200,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imagePath ?? ''), fit: BoxFit.cover)),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          child: Container(
            height: 200,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [AppColor.secondaryColor, Colors.transparent])),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}
