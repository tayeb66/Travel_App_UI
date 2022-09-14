import 'package:flutter/material.dart';
import 'package:travel_app_ui/const/style.dart';

import 'colors.dart';

Widget destinationCard(BuildContext context, String? imagePath) {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 20),
        height: 200,
        width: MediaQuery.of(context).size.width - 60,
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
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent])),
        ),
      ),
    ],
  );
}

Widget hotDestinationCard(BuildContext context, String? imagePath,
    String? placeName, String? placeCount) {
  return Stack(
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
      SizedBox(
        height: 15,
      ),
      Positioned(
        bottom: 20,
        left: 40,
        child: Column(
          children: [
            PrimaryText(
              text: placeName,
              size: 12,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w400,
            ),
            PrimaryText(
              text: placeCount,
              size: 8,
              color: Colors.white70,
              fontWeight: FontWeight.w200,
            )
          ],
        ),
      ),
    ],
  );
}

Widget customAppbar() {
  return Padding(
    padding: const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PrimaryText(
          text: 'Destination',
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w700,
          size: 32,
        ),
        RawMaterialButton(
          fillColor: Colors.white30,
          shape: const CircleBorder(),
          onPressed: () {},
          padding: const EdgeInsets.all(8),
          constraints: const BoxConstraints(minWidth: 0),
          child: const Icon(
            Icons.search_outlined,
            color: AppColor.primaryColor,
          ),
        )
      ],
    ),
  );
}
