import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';
import 'package:shopink/core/widgets/Custom_text_form_field.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: MyTextStyle.largetext,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/smiley-handsome-man-posing_23-2148911841.jpg?t=st=1712769574~exp=1712773174~hmac=f40a5ce24efbe48e8b912cc7998936542e1b2fec47038f52fc0df0e070125189&w=740'),
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            CustomTextField(
              hintText: 'Name',
              icon: Icons.person,
              fillcolor: Colors.grey[200],
            ),
            SizedBox(
              height: size.height * .01,
            ),
            CustomTextField(
              hintText: 'Bio',
              icon: Icons.person,
              fillcolor: Colors.grey[200],
            ),
            SizedBox(
              height: size.height * .01,
            ),
            CustomTextField(
              hintText: 'Phone',
              icon: Icons.person,
              fillcolor: Colors.grey[200],
            ),
            SizedBox(
              height: size.height * .01,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(size.width, size.height * .055),
                ),
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: MyTextStyle.mediumtext.copyWith(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
