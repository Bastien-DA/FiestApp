import 'package:fiestapp/components/avatar-group/avatar-group.component.dart';
import 'package:fiestapp/mock/user.mock.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SondageCard extends StatefulWidget {
  const SondageCard({super.key});

  @override
  State<SondageCard> createState() => _SondageCardState();
}

class _SondageCardState extends State<SondageCard> {
  void onClick() {
    print("SondageCard");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kilian marchera sur une huitre ?",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                AvatarGroup(
                  users: mockUsers,
                  haveBackground: false,
                  textColor: Colors.black,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.hourglass,
                  color: Color(0xffE15B42),
                  size: 17,
                ),
                Text("10h"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
