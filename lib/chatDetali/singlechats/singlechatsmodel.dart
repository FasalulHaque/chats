// To parse this JSON data, do
//
//     final chatMessage = chatMessageFromJson(jsonString);

import 'dart:convert';

ChatMessage chatMessageFromJson(String str) =>
    ChatMessage.fromJson(json.decode(str));

String chatMessageToJson(ChatMessage data) => json.encode(data.toJson());

class ChatMessage {
  ChatMessage({
    this.messageContent,
    this.messageType,
  });

  String? messageContent;
  String? messageType;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
        messageContent: json["messageContent "],
        messageType: json["messageType"],
      );

  Map<String, dynamic> toJson() => {
        "messageContent ": messageContent,
        "messageType": messageType,
      };
}
