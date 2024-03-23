
// Model data untuk Widget Inbox
class Inbox {
    final String urlImage;
  final String txtName;
  final String txtMessage;
  final String txtChat;
 
  final String txtTime;
  final String txtPanggilan;

  Inbox({
    required this.urlImage,
    required this.txtName,
    required this.txtMessage,
    required this.txtChat,
    
    required this.txtTime,
    required this.txtPanggilan,
  });
}

// Contoh data
List<Inbox> inboxs = [
  Inbox(
    urlImage: 'assets/images/imageprofile.png',
    txtName: 'Virginia M. Patterson',
    txtMessage: 'Hi, Good Evening Bro.!',
    txtChat: '03',
    txtTime: '12:00',
    txtPanggilan: 'Incoming   |   Nov 03, 202X'
   
  ),
  Inbox(
    urlImage: 'assets/images/imageprofile.png',
    txtName: 'Jonathon K. Nix',
    txtMessage: 'I Just Finished It.!',
    txtChat: '08',
    txtTime: '11:00',
    txtPanggilan: 'Incoming   |   Nov 05, 202X'
  ),
  Inbox(
    urlImage: 'assets/images/imageprofile.png',
    txtName: 'Duncan E. Hoffman',
    txtMessage: 'How are you?',
    txtChat: '05',
    txtTime: '10:00',
    txtPanggilan: 'Outgoing   |   Nov 06, 202X'

  ),
  Inbox(
    urlImage: 'assets/images/imageprofile.png',
    txtName: 'Roy R. McCraney',
    txtMessage: 'OMG, This is Amazing..',
    txtChat: '07',
    txtTime: '14:59',
    txtPanggilan: 'Missed   |   Nov 15, 202X'
  ),
  Inbox(
    urlImage: 'assets/images/imageprofile.png',
    txtName: 'Janice R. Norris',
    txtMessage: 'Wow, This is Really Epic',
    txtChat: '02',
    txtTime: '09:29',
    txtPanggilan: 'Incoming   |   Nov 20, 202X'
  ),
];
