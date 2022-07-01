import 'package:App/models/user/user_models.dart';
import 'package:flutter/material.dart';



class UsersScreen extends StatelessWidget {
  List<UsersModel>users = [
    UsersModel(
      id: 1,
      name: 'Ahmed Ehab',
      phone: '01064532480'

    ),
    UsersModel(
        id: 2,
        name: 'Ahmed Mohamed',
        phone: '01064463480'

    ),
    UsersModel(
        id: 3,
        name: 'Mohamed Ehab',
        phone: '01064534780'

    ),
    UsersModel(
        id: 1,
        name: 'Ahmed Ehab',
        phone: '01064532480'

    ),
    UsersModel(
        id: 2,
        name: 'Ahmed Mohamed',
        phone: '01064463480'

    ),
    UsersModel(
        id: 3,
        name: 'Mohamed Ehab',
        phone: '01064534780'

    ),
    UsersModel(
        id: 1,
        name: 'Ahmed Ehab',
        phone: '01064532480'

    ),
    UsersModel(
        id: 2,
        name: 'Ahmed Mohamed',
        phone: '01064463480'

    ),
    UsersModel(
        id: 3,
        name: 'Mohamed Ehab',
        phone: '01064534780'

    ),
    UsersModel(
        id: 1,
        name: 'Ahmed Ehab',
        phone: '01064532480'

    ),
    UsersModel(
        id: 2,
        name: 'Ahmed Mohamed',
        phone: '01064463480'

    ),
    UsersModel(
        id: 3,
        name: 'Mohamed Ehab',
        phone: '01064534780'

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUsersItem(users[index]),
        separatorBuilder: (context, index) => Padding(
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

  Widget buildUsersItem(UsersModel user) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${user.id}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${user.name}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${user.phone}',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
