import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tinnitus/data/keys/openapi_key.dart';

class ChatService {
  final String _apiKey = openAiKey;
  final String _baseUrl = 'https://api.openai.com/v1/chat/completions';

  // Function to send a message to OpenAI API and get a response
  Future<String> getAIResponse(String userMessage) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          "model": "gpt-4", // or "gpt-3.5-turbo"
          "messages": [
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": userMessage},
          ],
        }),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final aiReply = jsonResponse['choices'][0]['message']['content'];
        return aiReply;
      } else {
        return 'Error: ${response.statusCode} ${response.reasonPhrase}';
      }
    } catch (e) {
      return 'Error: $e';
    }
  }
}
