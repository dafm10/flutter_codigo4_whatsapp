import 'package:flutter_codigo4_whatsapp/models/call_model.dart';
import 'package:flutter_codigo4_whatsapp/models/chat_message.dart';
import 'package:flutter_codigo4_whatsapp/models/chat_model.dart';
import 'package:flutter_codigo4_whatsapp/models/status_model.dart';

List<CallsUser> callsUser = [
  CallsUser(
      avatarUrl:
      'https://static.wikia.nocookie.net/esstarwars/images/e/eb/ArtooTFA2-Fathead.png/revision/latest?cb=20150926172435',
    nameUser: 'R2D2',
    time: 'Yesterday 10:50 a.m.',
    statusCall: true,
  ),
  CallsUser(
    avatarUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Kaley_Cuoco_at_PaleyFest_2013.jpg/245px-Kaley_Cuoco_at_PaleyFest_2013.jpg',
    nameUser: 'R2D2',
    time: 'December 06, 10:50 a.m.',
    statusCall: false,
  ),
  CallsUser(
    avatarUrl:
    'https://static.wikia.nocookie.net/esstarwars/images/3/3f/C-3PO_TLJ_Card_Trader_Award_Card.png/revision/latest/top-crop/width/360/height/450?cb=20200718062140',
    nameUser: 'C3PO',
    time: 'December 01, 05:20 p.m.',
    statusCall: true,
  ),
];

List<StatusModelUser> statusUser = [
  StatusModelUser(
      avatarUrl:
          'https://static.wikia.nocookie.net/esstarwars/images/e/eb/ArtooTFA2-Fathead.png/revision/latest?cb=20150926172435',
      nameUser: 'R2D2',
      time: '15 minutess ago',
  ),
  StatusModelUser(
    avatarUrl:
    'https://static.wikia.nocookie.net/esstarwars/images/3/3f/C-3PO_TLJ_Card_Trader_Award_Card.png/revision/latest/top-crop/width/360/height/450?cb=20200718062140',
    nameUser: 'C3PO',
    time: '20 minutess ago',
  ),
];

List<StatusViewModelUser> statusViewUser = [
  StatusViewModelUser(
      avatarUrlView:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Kaley_Cuoco_at_PaleyFest_2013.jpg/245px-Kaley_Cuoco_at_PaleyFest_2013.jpg',
      nameUserView: 'Penny',
      timeView: '40 minutes ago',
  ),
  StatusViewModelUser(
    avatarUrlView:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsseuLJA87_68mbDPUaiH27soEHxSXgfISn00aaUrwGUfou9I7t51z78jNFzvLsoAclUg&usqp=CAU',
    nameUserView: 'Leonard Hofstadter',
    timeView: '55 minutes ago',
  ),
];

List<ChatMessage> messages = [
  ChatMessage(
    messageContent: "Hola, cómo estas?",
    messageType: "me",
  ),
  ChatMessage(
    messageContent: "Estoy bien, gracias, tú?",
    messageType: "other",
  ),
  ChatMessage(
    messageContent: "Todo muy bien, qué haces?",
    messageType: "me",
  ),
  ChatMessage(
    messageContent: "Puedes ayudarme con algo?",
    messageType: "me",
  ),
  ChatMessage(
    messageContent: "Si claro, dime",
    messageType: "other",
  ),
];

List<ChatModel> dataListChat = [
  ChatModel(
    avatarUrl:
        "https://static.wikia.nocookie.net/esstarwars/images/e/eb/ArtooTFA2-Fathead.png/revision/latest?cb=20150926172435",
    nameUser: "R2D2",
    message: "Ya he enviado el encargo",
    countMessage: 0,
    time: "10:20",
    isWriting: false,
  ),
  ChatModel(
    avatarUrl:
        "https://static.wikia.nocookie.net/esstarwars/images/3/3f/C-3PO_TLJ_Card_Trader_Award_Card.png/revision/latest/top-crop/width/360/height/450?cb=20200718062140",
    nameUser: "C3PO",
    message: "Acabo de llegar a la casa, abreme la puerta",
    countMessage: 3,
    time: "22:14",
    isWriting: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.ecestaticos.com/0NSU6CTpIsbkQSi6hjq36RSdxTo=/0x0:0x0/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F769%2Ff6d%2Fe65%2F769f6de657b8d14f063b2c640a863474.jpg",
    nameUser: "Sheldon Cooper",
    message: "Flutter es genial!!!",
    countMessage: 0,
    time: "12:30",
    isWriting: true,
  ),
  ChatModel(
    avatarUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsseuLJA87_68mbDPUaiH27soEHxSXgfISn00aaUrwGUfou9I7t51z78jNFzvLsoAclUg&usqp=CAU",
    nameUser: "Leonard Hofstadter",
    message: "Ya he enviado el encargo",
    countMessage: 1,
    time: "10:20",
    isWriting: false,
  ),
  ChatModel(
    avatarUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Kaley_Cuoco_at_PaleyFest_2013.jpg/245px-Kaley_Cuoco_at_PaleyFest_2013.jpg",
    nameUser: "Penny",
    message: "Acabo de llegar a la casa, abreme la puerta",
    countMessage: 3,
    time: "22:14",
    isWriting: true,
  ),
];
