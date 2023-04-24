import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/theme_button.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ChatBar(),
      body: _ChatView(),
    );
  }
}

class _ChatBar extends StatelessWidget with PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage("https://lh3.googleusercontent.com/pw/AJFCJaWbCTH1Cznkcl00A919PJ5HbZZth_vcaZgIi60wS06TEbuC9eAfn22oGCVhbYpKz8yLKH5j7LcAYVrOeNUiYKSZe89fPOGIGwYe_i4O5ds_S38sBjqvSVW6rG219NaqAWkILL2B-euwCNCNqbSDW1uByw=w617-h617-s-no"),
        ),
      ),
      title: const Text("Cyphound"),
      centerTitle: true,
      actions: [ThemeButton()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: 
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
              })
            ),

            // Caja de texto de mensaje
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}