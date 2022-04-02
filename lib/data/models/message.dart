import 'dart:convert';

class Message {
  final String message;
  final bool isMe;
  Message({
    required this.message,
    required this.isMe,
  });

  Message copyWith({
    String? message,
    bool? isMe,
  }) {
    return Message(
      message: message ?? this.message,
      isMe: isMe ?? this.isMe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'isMe': isMe,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      message: map['message'] ?? '',
      isMe: map['isMe'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));

  @override
  String toString() => 'Message(message: $message, isMe: $isMe)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message && other.message == message && other.isMe == isMe;
  }

  @override
  int get hashCode => message.hashCode ^ isMe.hashCode;
}
