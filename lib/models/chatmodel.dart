// To parse this JSON data, do
//
//     final chat = chatFromJson(jsonString);

import 'dart:convert';

Chat chatFromJson(String str) => Chat.fromJson(json.decode(str));

String chatToJson(Chat data) => json.encode(data.toJson());

class Chat {
    String? avatar;
    String? name;
    bool? isGroup;
    String? updatedAt;
    String? message;
    String? status;

    Chat({
         this.avatar,
         this.name,
         this.isGroup,
         this.updatedAt,
         this.message,
         this.status,
    });

    factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        avatar: json["avatar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updatedAt: json["updatedAt"],
        message: json["message"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isGroup": isGroup,
        "updatedAt": updatedAt,
        "message": message,
        "status":status,
    };
}
