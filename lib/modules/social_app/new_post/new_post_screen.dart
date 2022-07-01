import 'package:App/layout/social_app/cubit/cubit.dart';
import 'package:App/layout/social_app/cubit/state.dart';
import 'package:App/shared/components/components.dart';
import 'package:App/shared/style/colors.dart';
import 'package:App/shared/style/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPostScreen extends StatelessWidget {

  var textController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar:
              defaultAppBar(
                  context: context,
                  title: 'Create Post',
                  actions: [
            defaultTextButton(
                function: () {
                  var now =DateTime.now();
                  if(SocialCubit.get(context).postImage ==null)
                    {
                      SocialCubit.get(context).createPost(
                          dateTime: now.toString(),
                          text: textController.text,
                      );
                    }else
                      {
                        SocialCubit.get(context).uploadPostImage(
                            dateTime: now.toString(),
                            text: textController.text,
                        );
                      }
                },
                text: 'Post',
            ),
          ]),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                if (state is SocialCreatePostLoadingState)
                LinearProgressIndicator(),
                if (state is SocialCreatePostLoadingState)
                  SizedBox(height: 8,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/131330601_3025725584327518_6377013370480066680_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=9ZcHR1Grzo0AX_z0Yo9&_nc_ht=scontent.fcai21-4.fna&oh=6c6b63712770fa9a5b07fd97b6234053&oe=614C3945'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: Text(
                      'Ahmed Ehab',
                      style: TextStyle(
                        height: 1.4,
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: TextFormField(
                    controller: textController,
                    decoration: InputDecoration(
                        hintText: 'What is on your mind ... ',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                if(SocialCubit.get(context).postImage !=null)
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4,),
                        image: DecorationImage(
                          image: FileImage(SocialCubit.get(context).postImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: CircleAvatar(
                        radius: 18,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      onPressed: ()
                      {
                        SocialCubit.get(context).removePostImage();
                      },

                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: ()
                        {
                         SocialCubit.get(context).getPostImage();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(IconBroken.Image_2),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'add photo',
                            )
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 150,
                    // ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '# tags',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
