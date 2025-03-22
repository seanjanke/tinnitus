import 'package:flutter/material.dart';
import 'package:tinnitus/data/sources/open_ai_service.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ChatService _openAIService = ChatService();
  final List<Map<String, String>> _messages = [];

  void _sendMessage() async {
    final userMessage = _controller.text.trim();
    if (userMessage.isNotEmpty) {
      setState(() {
        _messages.add({'role': 'user', 'content': userMessage});
        _controller.clear();
      });

      final aiResponse = await _openAIService.getAIResponse(userMessage);
      setState(() {
        _messages.add({'role': 'assistant', 'content': aiResponse});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat with AI')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isUser = message['role'] == 'user';
                return ListTile(
                  title: Text(
                    message['content']!,
                    textAlign: isUser ? TextAlign.end : TextAlign.start,
                    style: TextStyle(
                      color: isUser ? Colors.blue : Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Type your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
