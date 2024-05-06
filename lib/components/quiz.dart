class Quiz {
  final int id, answer;
  final String quiz, ask;
  final List<String> optional;

  Quiz({required this.id, required this.quiz, required this.ask, required this.optional, required this.answer});
}

const List quiz_exam = [
  {
    'id': 1,
    'quiz': 'assets/Soal1.png',
    'ask': 'Siapakah Presiden Pertama Indonesia?',
    'optional': [
      '1. Sultan Hamengkubuwono IX',
      '2. Ir. Soekarno',
      '3. Bj. Habibi',
      '4. Soeharto',
    ],
    'answer': 1,
  },
  {
    'id': 2,
    'quiz': 'assets/Soal2.png',
    'ask': 'Siapakah Ketua BPUPKI?',
    'optional': [
      '1. Radjiman Wedyodinigrat',
      '2. Soekarso',
      '3. Moh. Hatta',
      '4. Soeharto',
    ],
    'answer': 0,
  },
  {
    'id': 3,
    'quiz': 'assets/soal3.png',
    'ask': 'Manakah dari gambar diatas yang merupakan rumah adat dari Bali?',
    'optional': [
      '1',
      '2',
      '3',
      '4',
    ],
    'answer': 3,
  },{
    'id': 4,
    'quiz': 'assets/soal4.png',
    'ask': 'Siapakah tokoh penjahit bendera merah putih yang dikibarkan dalam proklamasi 1945 ?',
    'optional': [
      '1',
      '2',
      '3',
      '4',
    ],
    'answer': 3,
  },{
    'id': 5,
    'quiz': 'assets/soal5.png',
    'ask': 'Siapakah pahlawan wanita  Indonesia yang berjuang melawan Belanda pada Perang Aceh?',
    'optional': [
      '1. R.A Kartini',
      '2. HR. Rasuna Said',
      '3. Megawati Soekarnoputri',
      '4. Cut Nyak Dien',
    ],
    'answer': 3,
  },{
    'id': 6,
    'quiz': 'assets/soal6.png',
    'ask': 'Berasal dari mana kah tokoh pahlawan di atas?',
    'optional': [
      '1. Sumatra Selatan',
      '2. Jawa Tengah',
      '3. Sulawesi Selatan',
      '4. Jawa Timur',
    ],
    'answer': 2,
  },{
    'id': 7,
    'quiz': 'assets/soal7.png',
    'ask': 'Siapakah tokoh pahlawan di atas?',
    'optional': [
      '1. Jenderal Pattimura',
      '2. Bj. Habibi',
      '3. Ahmad Yani',
      '4. Agus Salim',
    ],
    'answer': 3,
  },{
    'id': 8,
    'quiz': 'assets/soal8.png',
    'ask': 'Siapakah Tokoh Pahlawan di atas??',
    'optional': [
      '1. Pangeran Antasari',
      '2. Jenderal Pattimura',
      '3. Adam Malik',
      '4. Sultan Hasanuddin',
    ],
    'answer': 1,
  },{
    'id': 9,
    'quiz': 'assets/soal9.png',
    'ask': 'Tokoh di atas pernah menjabat sebagai apa pada tahun 1947-1949 dan 1953-1955?',
    'optional': [
      '1. Wakil Presiden Indonesia',
      '2. Menteri Agama Indonesia',
      '3. Presiden Indonesia',
      '4. Menteri Keamanan Indonesia',
    ],
    'answer': 0,
  },{
    'id': 10,
    'quiz': 'assets/soal10.png',
    'ask': 'Apa nama dari rumah adat di atas?',
    'optional': [
      '1. Tongkonan',
      '2. Joglo',
      '3. Hanaii',
      '4. Musalaki',
    ],
    'answer': 1,
  },
];
