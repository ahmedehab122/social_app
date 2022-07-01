abstract class SocialStates {}

class SocialInitialState extends SocialStates {}

//get User

class SocialGetUserLoadingState extends SocialStates {}

class SocialGetUserSuccessState extends SocialStates {}

class SocialGetUserErrorState extends SocialStates
{
  final String error;

  SocialGetUserErrorState(this.error);
}

//get Users Chats

class SocialGetAllUserLoadingState extends SocialStates {}

class SocialGetAllUserSuccessState extends SocialStates {}

class SocialGetAllUserErrorState extends SocialStates
{
  final String error;

  SocialGetAllUserErrorState(this.error);
}

//get Posts

class SocialGetPostsUserLoadingState extends SocialStates {}

class SocialGetPostsUserSuccessState extends SocialStates {}

class SocialGetPostsUserErrorState extends SocialStates
{
  final String error;

  SocialGetPostsUserErrorState(this.error);
}


//Like Post

class SocialLikePostsSuccessState extends SocialStates {}

class SocialLikePostsErrorState extends SocialStates
{
  final String error;

  SocialLikePostsErrorState(this.error);
}

//comments Post

class SocialCommentPostsSuccessState extends SocialStates {}

class SocialCommentPostsErrorState extends SocialStates
{
  final String error;

  SocialCommentPostsErrorState(this.error);
}


//Bottom Nav

class SocialChangeBottomNavState extends SocialStates {}

//New Post

class SocialNewPostState extends SocialStates {}

//Pick Profile

class SocialProfileImagePickSuccessState extends SocialStates {}

class SocialProfileImagePickErrorState extends SocialStates {}

//Pick Cover


class SocialCoverImagePickSuccessState extends SocialStates {}


class SocialCoverImagePickErrorState extends SocialStates {}


//Upload Profile


class SocialUploadProfileImageSuccessState extends SocialStates {}

class SocialUploadProfileImageErrorState extends SocialStates {}

//Upload Cover

class SocialUploadCoverImageSuccessState extends SocialStates {}

class SocialUploadCoverImageErrorState extends SocialStates {}

//User Update

class SocialUserUpdateLoadingState extends SocialStates {}

class SocialUserUpdateErrorState extends SocialStates {}

//Create Post

class SocialCreatePostLoadingState extends SocialStates {}

class SocialCreatePostSuccessState extends SocialStates {}

class SocialCreatePostErrorState extends SocialStates {}

//Chat

class SocialSendMessageSuccessState extends SocialStates {}

class SocialSendMessageErrorState extends SocialStates {}

class SocialGetMessagesSuccessState extends SocialStates {}

class SocialGetMessagesErrorState extends SocialStates {}

//Comments

class SocialCommentsSuccessState extends SocialStates {}

class SocialCommentsErrorState extends SocialStates {}

class SocialGetCommentsSuccessState extends SocialStates {}

class SocialGetCommentsErrorState extends SocialStates {}

//pick post image

class SocialPostImagePickSuccessState extends SocialStates {}

class SocialPostImagePickErrorState extends SocialStates {}

//remove Post Image

class SocialRemovePostErrorState extends SocialStates {}




