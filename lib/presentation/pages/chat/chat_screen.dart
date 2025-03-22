import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinnitus/core/localization/locales.dart';
import 'package:tinnitus/core/theme/theme.dart';
import 'package:tinnitus/data/sources/open_ai_service.dart';
import 'package:tinnitus/presentation/util/easy_theme.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController = TextEditingController();
  final ChatService chatService = ChatService();
  final List<Map<String, String>> messages = [];
  bool isEmpty = true;

  void sendMessage() async {
    final userMessage = messageController.text.trim();
    if (userMessage.isNotEmpty) {
      setState(() {
        messages.add({'role': 'user', 'content': userMessage});
        messageController.clear();
      });

      final aiResponse = await chatService.getAIResponse(userMessage);
      setState(() {
        messages.add({'role': 'assistant', 'content': aiResponse});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.chatWithAI.getString(context),
          style: context.texts.labelLarge,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isUser = message['role'] == 'user';

                return Align(
                  alignment:
                      isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: context.pageWidth * 0.7,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 10,
                      ),
                      margin: EdgeInsets.only(
                        left: isUser ? 0 : 12,
                        right: isUser ? 12 : 0,
                        top: 12,
                      ),
                      decoration: BoxDecoration(
                        color:
                            isUser
                                ? context.colors.primary
                                : context.colors.surface,
                        borderRadius: BorderRadius.only(
                          topLeft:
                              isUser ? Radius.circular(12) : Radius.circular(0),
                          topRight:
                              isUser ? Radius.circular(0) : Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        message['content']!,
                        textAlign: isUser ? TextAlign.end : TextAlign.start,
                        style: context.texts.bodyMedium!.copyWith(
                          color:
                              isUser
                                  ? context.colors.onPrimary
                                  : context.colors.onSurface,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    textCapitalization: TextCapitalization.words,
                    minLines: 1,
                    maxLines: 5,
                    cursorColor: context.colors.onSurface,
                    cursorWidth: 2.5,
                    cursorHeight: 24,
                    onChanged: (value) {
                      setState(() => isEmpty = value.isEmpty);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: context.colors.surface,
                      hintText: LocaleData.sendMessage.getString(context),
                      hintStyle: context.texts.bodyMedium!.copyWith(
                        color: context.colors.surfaceContainerHighest,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: circ60,
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                gap12,
                GestureDetector(
                  onTap: sendMessage,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                    padding: padding8,
                    decoration: BoxDecoration(
                      color:
                          messageController.text.isNotEmpty
                              ? context.colors.primary.wOpacity(0.2)
                              : context.colors.surface,
                      shape: BoxShape.circle,
                    ),
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      child: FaIcon(
                        FontAwesomeIcons.solidCircleRight,
                        color:
                            messageController.text.isNotEmpty
                                ? context.colors.primary
                                : context.colors.surfaceContainerHigh,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
