import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://elcomercio.pe/resizer/v2/LKZGUMVHFZFLZJWDCTULLSSAZU.jpg?auth=1d125c45361da227832fe997d08fa6d064c4925d51060d15eb82cb9eada84e5e&width=1200&height=810&quality=90&smart=true'),
          ),
        ),
        title: const Text('Isa Perez♥️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ( index % 2 == 0 )
                        ? const HerMessageBubble()
                        : const MyMessageBubble();
                    })),

            /// Caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
