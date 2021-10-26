

import 'package:firstapp/models/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UsersScreen extends StatelessWidget {

  List<UserModel> users =[
    UserModel(id: 1, name: 'sara attia', phone: '+201283523140'),
    UserModel(id: 2, name: 'm7md yasser', phone: '+201201188488'),
    UserModel(id: 3, name: 'hager attia', phone: '+200105895421'),
    UserModel(id: 4, name: 'gomaa', phone: '+201189745623'),
    UserModel(id: 1, name: 'sara attia', phone: '+201283523140'),
    UserModel(id: 2, name: 'm7md yasser', phone: '+201201188488'),
    UserModel(id: 3, name: 'hager attia', phone: '+200105895421'),
    UserModel(id: 4, name: 'gomaa', phone: '+201189745623'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'users',
          ),
      ),
      body: ListView.separated(itemBuilder: (context ,index) => buildUserItem(users[index]),
          separatorBuilder:(context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,

            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
          ),
    );
  }

  Widget buildUserItem(UserModel user) =>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ],
        ),
      ],
    ),
  ) ;

}


