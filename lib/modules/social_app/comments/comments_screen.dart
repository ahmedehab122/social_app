import 'package:App/layout/social_app/cubit/cubit.dart';
import 'package:App/layout/social_app/cubit/state.dart';
import 'package:App/models/social_app/social_user_model.dart';
import 'package:App/shared/style/colors.dart';
import 'package:App/shared/style/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentsScreen extends StatelessWidget {
  var commentsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
        listener: (context, state){},
      builder: (context, state)
      {
        Color color= Colors.grey[600];
          return Scaffold(
            appBar: AppBar(
              title: Text('Comments'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [

                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                        SocialCubit.get(context).userModel.image,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '${SocialCubit.get(context).userModel.name}',
                                      style: TextStyle(
                                        height: 1.4,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      color: defaultColor,
                                      size: 15,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [

                                    SizedBox(width: 50),
                                    Expanded(
                                      child: Container(
                                        alignment:AlignmentDirectional.centerStart,
                                        // height: 40,

                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Hello',


                                          ),

                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                    ),
                                    TextButton(
                                        onPressed: (){

                                        },
                                        child: Text(
                                          'Like',
                                          style: TextStyle(
                                              color: color,

                                          ),
                                        ),

                                    ),
                                    TextButton(
                                        onPressed: (){},
                                        child: Text(
                                          'Reply',
                                          style: TextStyle(
                                              color: color
                                          ),
                                        )
                                    ),

                                  ],
                                ),

                                SizedBox(height: 5,),
                                /*Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.grey[300],
                                ),*/
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 2,
                        ),
                        itemCount: 10

                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              SocialCubit.get(context).userModel.image,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: commentsController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type a comment... ',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 50,
                          color: Colors.white,
                          child: MaterialButton(
                            onPressed: () {
                              /*SocialCubit.get(context)
                              .commentPost(SocialCubit.get(context)
                              .postsId[index]);*/
                            },
                            minWidth: 1,
                            child: Icon(
                              IconBroken.Send,
                              size: 25,
                              color: defaultColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
      }
    );
  }
}

/*Expanded(
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(

                              padding: EdgeInsets.all(20),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                  '',
                                ),
                              ));
                        },
                        separatorBuilder: (context, index) => SizedBox(height: 15,),
                        itemCount: 10
                    ),
                  ),*/
