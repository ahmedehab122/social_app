import 'package:App/layout/social_app/cubit/cubit.dart';
import 'package:App/layout/social_app/cubit/state.dart';
import 'package:App/modules/social_app/edit_profile/edit_profile_screen.dart';
import 'package:App/modules/social_app/new_post/new_post_screen.dart';
import 'package:App/shared/components/components.dart';
import 'package:App/shared/components/constants.dart';
import 'package:App/shared/style/colors.dart';
import 'package:App/shared/style/icon_broken.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = SocialCubit.get(context).userModel;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 210,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topCenter,

                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(4),
                            topRight:Radius.circular(4),


                          ),
                          image: DecorationImage(
                            image: NetworkImage('${userModel.cover}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 63,
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            '${userModel.image}'
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${userModel.name}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '${userModel.bio}',
                style: Theme.of(context).textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '100',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(height: 2,),
                            Text(
                              'Posts',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '2000',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(height: 2,),
                            Text(
                              'Photos',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '10k',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(height: 2,),
                            Text(
                              'Followers',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Column(
                          children: [
                            Text(
                              '124',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(height: 2,),
                            Text(
                              'Followings',
                              style: Theme.of(context).textTheme.caption,
                            ),

                          ],
                        ),
                        onTap: (){},
                      ),
                    ),



                  ],
                ),
              ),
              Row(

                children: [

                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(IconBroken.Plus,color: Colors.black,),
                          SizedBox(width: 10,),
                          Text('Add Story', style: TextStyle(color: Colors.black),),
                        ],
                      ),


                    ),

                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(

                    child: OutlinedButton(

                      onPressed: (){
                        navigateTo(context,NewPostScreen(),);
                      },
                      child: Row(
                        children: [
                          Icon(IconBroken.Image_2),
                          SizedBox(width: 10,),
                          Text('Add Photos'),
                        ],
                      ),


                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(

                    onPressed: (){
                      navigateTo(context,
                          EditProfileScreen());
                    },
                    child: Row(
                      children: [
                        Icon(
                            IconBroken.Edit
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Edit')
                      ],
                    ),


                  ),


                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children:
                [
                  OutlinedButton(
                    onPressed: (){
                      FirebaseMessaging.instance.subscribeToTopic('announcements');
                    },
                    child: (Text('Follow')),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                    onPressed: (){
                      FirebaseMessaging.instance.unsubscribeFromTopic('announcements');

                    },
                    child: (Text('unFollow')),
                  ),
                  OutlinedButton(

                    onPressed: (){
                      signOutSocial(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                            IconBroken.Logout
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('LogOut')
                      ],
                    ),


                  ),

                ],
              ),



            ],

          ),
        );
    },

    );
  }


}


