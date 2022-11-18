import 'package:flutter/material.dart';
import '../models/user.dart';

class ItemData extends StatelessWidget {
  final User user;
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user.firstName!} ${user.lastName!}'),
      leading: Image(image: NetworkImage(user.avatar!)),
      subtitle: Text(user.correoElectrnico!),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
