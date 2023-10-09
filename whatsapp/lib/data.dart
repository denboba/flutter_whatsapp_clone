const data = [
  {
    'name': 'abdi',
    'message': 'Hey, how are you doing?',
    'time': 'Today,9:00 pm',
    'profilePic': 'assets/abdi.jpg',
    'isMe': true,
  },
  {
    'name': 'David',
    'message': 'yeah, it is tomorrow ',
    'time': 'Today,7:25 am',
    'profilePic': 'assets/david.jpg',
    'isMe': false,
  },
  {
    'name': 'Nastea L',
    'message': 'I am sleeping ?',
    'time': 'Today,7:10 am',
    'profilePic': 'assets/nastea.jpg',
    'isMe': false,
  },
  {
    'name': 'Bogdan',
    'message': 'Hello, whats up',
    'time': 'Today, 2:25 pm',
    'profilePic': 'assets/bogdan.jpg',
    'isMe': true,
  },
  {
    'name': 'Ana Bogdan',
    'message': 'Hello, hey you going to course?.',
    'time': 'Today, 1:03 pm',
    'profilePic': 'assets/ana_bogdan.jpg',
    'isMe': true,
  },
  {
    'name': 'Alin Savu',
    'message': 'ai terminat ? .',
    'time': 'Today, 12:06 pm',
    'profilePic': 'assets/alin.jpg',
    'isMe': false,
  },
  {
    'name': 'Andrei',
    'message': 'Call me, have some work',
    'time': 'Today,12:06 pm',
    'profilePic': 'assets/andrei.jpg',
    'isMe': false,
  },
  {
    'name': 'Mihnea',
    'message': 'noi avem aia cu determinarea sa facem ',
    'time': 'Today,11:06 pm',
    'profilePic': 'assets/mihnea.jpg',
    'isMe': false,
  },
  {
    'name': 'Mom',
    'message': 'You ate food?',
    'time': 'Today, 10:00 am',
    'profilePic': 'assets/mom.jpg',
    'isMe': true,
  },
  {
    'name': 'Robert',
    'message': 'Yo!!!!! Long time, no see!?',
    'time': 'Today, 9:53 am',
    'profilePic': 'assets/robert.jpg',
  },
  {
    'name': 'Alula',
    'message': 'we can do it tomorow...',
    'time': 'Today, 6:02 am',
    'profilePic': 'assets/alula.jpg',
    'isMe': false,
  },
  {
    'name': 'Minhazur Rahman',
    'message': 'can you help me with sth?',
    'time': 'Today, 4:56 am',
    'profilePic': 'assets/rehman.enc',
    'isMe': false,
  },
  {
    'name': 'Dad',
    'message': 'so you need it ?',
    'time': 'Yesterday,3:56 am',
    'profilePic': 'assets/dad.jpg',
    'isMe': false,
  },
  {
    'name': 'Jemal',
    'message': 'Hi buddy, how are you?',
    'time': 'Yesterday,2:20 am',
    'profilePic': 'assets/jemal.jpg',
    'isMe': true,
  },
  {
    'name': 'Laur',
    'message': 'salut , ce faci?',
    'time': 'Yesterday, 2:00 am',
    'profilePic': 'assets/laur.enc',
    'isMe': true,
  },
  {
    'name': 'Ayisha ',
    'message': 'Akkam , Naga jirtaa ?',
    'time': 'Yesterday,1:50 am',
    'profilePic': 'assets/aayisha.jpg',
    'isMe': true,
  },
  {
    'name': 'Razvan Mihaescu',
    'message': 'it is a bit hard to do it',
    'time': 'Yesterday,1:30 am',
    'profilePic': 'assets/Rezvan.enc',
    'isMe': true,
  },
];

const messages = [
  {"isMe": false, "text": "Hey What is up with you!!", "time": "10:00 am"},
  {"isMe": true, "text": "i am doing good?", "time": "11:00 am"},
  {"isMe": false, "text": "I am also doing great !", "time": "11:01 am"},
  {
    "isMe": false,
    "text": "Just want to ask you if we have some project.",
    "time": "11:01 am"
  },
  {"isMe": true, "text": "aha , i got u", "time": "11:03 am"},
  {
    "isMe": false,
    "text": "haha, so can you help me with that?",
    "time": "11:04 am"
  },
  {"isMe": true, "text": " Sure, what is the your group ?", "time": "11:05 am"},
  {
    "isMe": false,
    "text": "Group  '4'",
    "time": "11:06 am",
  },
  {
    "isMe": true,
    "text": "Ok, your group is 4, right?",
    "time": "11:15 am",
  },
  {"isMe": false, "text": "yes, i am in group 4 ", "time": "11:17 am"},
  {
    "isMe": false,
    "text": "0kay , i hope we have enough time",
    "time": "11:16 am"
  },
  {
    "isMe": true,
    "text": "yeah , i will send you the  detail through  your email",
    "time": "11:17 am"
  },
  {
    "isMe": false,
    "text": "okay, i will be waiting for it, thanks!",
    "time": "11:18 am",
  },
  {
    "isMe": true,
    "text": "anytime, what are you doing now?",
    "time": "11:19 am",
  },
  {
    "isMe": false,
    "text": "i am a bit tired going to sleep , what about you?",
    "time": "11:20 am",
  },
];

const groupData = [
  {
    'name': 'New Community',
    'message': '',
    'profilePic': 'assets/new_comunity.jpeg',
    'date': 'Todey,1:00 am',
  },
  {
    'name': 'Asi Poli',
    'message': '~Lorena: te rog sa nu mai trimiti mesaje pe grupul acesta.',
    'profilePic': 'assets/asipol.jpg',
    'date': 'Today,9:00 am',
  },
  {
    'name': 'PCLP4',
    'message': '~Andrea: e cineva la curs?',
    'profilePic': 'assets/pclp4.enc',
    'date': 'Today, 3:32 pm',
  },
  {
    'name': 'ACS CTI 2022',
    'message': '~Carol: ca sa nu mai fie confuzii',
    'profilePic': 'assets/acs2022-206.jpg',
    'date': 'Yesterday, 11:31 pm',
  },
  {
    'name': '322CC',
    'message': '~visan: n a dati la toti ',
    'profilePic': 'assets/322cc.jpg',
    'date': 'Yesterday, 2:45pm',
  },
  {
    'name': 'ISB info',
    'message': '~Daniela: Hello everyone, join us here ',
    'profilePic': 'assets/isb.jpg',
    'date': '23/08/2023',
  },
  {
    'name': 'CD 2022-2026',
    'message': '~Alexandra: Buna, poate cineva sa dea poza cu cursul?',
    'profilePic': 'assets/cd2022-2026.jpg',
    'date': '23/08/2023',
  },
  {
    'name': 'Anunturi 322 CC',
    'message':
        '~Laur_rdu: Cei care ati fost la cursul de azi, puteti sa imi spuneti ce s a facut?',
    'profilePic': 'assets/anunturi.jpg',
    'date': '23/08/2023',
  }
];
