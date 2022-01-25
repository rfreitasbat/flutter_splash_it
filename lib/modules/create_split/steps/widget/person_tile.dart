import 'package:flutter/material.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/theme/app_theme.dart';

class PersonTileWidget extends StatelessWidget {
  final FriendModel data;
  final bool isRemoved;
  final VoidCallback onPressed;
  const PersonTileWidget({
    Key? key,
    required this.data,
    this.isRemoved = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                data.photoURL,
              ),
              fit: BoxFit.cover,
            )),
      ),
      title: Text(
        data.name,
        style: isRemoved
            ? AppTheme.textStyles.addedFriend
            : AppTheme.textStyles.notAddedFriend,
      ),
      trailing: IconButton(
        icon: isRemoved
            ? Icon(
                Icons.remove,
                color: AppTheme.colors.iconRemoveFriend,
              )
            : Icon(
                Icons.add,
                color: AppTheme.colors.IconAddFriend,
              ),
        onPressed: onPressed,
      ),
    );
  }
}
