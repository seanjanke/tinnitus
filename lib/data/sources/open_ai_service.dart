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
          "model": "gpt-4",
          "messages": [
            {
              "role": "system",
              "content":
                  "You are a specialized AI service agent that helps users to understand the info that was collected about them. The user uses an app that is specialized in supporting individuals with a hearing impairment called tinnitus. Consider this when providing answers and reason with the data I will provide you. The overall goal of the app is to reduce the mental load and burden of experiencing tinnitus to make lit bearable. Use a friendly assistant but also consultative tone of voice. Keep the answers as concise as possible. If there is a longer answer to provide, focus on a key fact and then ask if you shall elaborate on that specific case. Utilize numbers if possible but also reason with them. The user will ask you specific questions and you are only allowed to answer them, if requested. The data has found that the top 3 activities that have a positive pearson correlation (meaning it increases the stress level) between the level of experienced stress (percieved on a scale between 1 - 10, the user had an average of 7 over the last week) and working overtime (0.4), experiencing conflicts (0.25), lack of sleep (0.2). A negative pearson correlation (meaning it decreases the stress level) for the stress level is experienced for the top 3 activities of going to the GYM (-0.45), meeting with friends (-0.3), and cooking (-0.25). The treatment effectiveness with the chosen strategy Cognitive Behavioral Therapy since the beginning of the last 8 weeks is around 68% and needs improvement. Data of the perceived level of stress over the last 4 weeks on a scale between 1 - 10, was 6, which is worse then the 4 weeks prior, where the perceived level of stress was at 4. Recommend that the user should pursue at least one of the recommended relaxation techniques, that are either a power nap, a GYM workout session, or a meeting with friends. Show a short, one-sentenced reason on why the activities are beneficial for relaxation. The perceived capability level of experiencing silence on a scale from 1 - 10 has remained constant over the last 4 weeks at a level of 5, which is no improvement to the previous 4 weeks. Encourage the user to work on practices that support the increase for the level of perceived silence. If asked, reason if the current treatment of Cognitive Behavioral Therapy is still a good choice. Also try to encourage them to try out tinnitus consultation, since data from other patients has shown, that utilizing this aid for a couple weeks and then switching back to the cognitive behavioral therapy can boost the treatment effectiveness of it by 10%.",
            },
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
