import 'dart:developer';

import 'package:consulting_system/data/data_providers/data_provider.dart';
import 'package:consulting_system/data/models/message.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class MessageSocket {
  IO.Socket socket = IO.io(socketAddr, <String, dynamic>{
    "transports": ["websocket"],
    "autoConnect": false
  });

  void connect() => socket.connect();

  void sendMessage({required Message message}) {
    try {
      socket.emit("message", message.toMap());
    } catch (e) {
      throw e.toString();
    }
  }

  void receiveMessage() {
    try {
      socket.on("user", (data) => log(data));
    } catch (e) {
      throw e.toString();
    }
  }

  void dispose() {
    socket.dispose();
  }
}
