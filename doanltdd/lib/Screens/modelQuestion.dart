class Chapter1 {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;
  Chapter1(
      {required this.text,
      required this.options,
      this.isLocked = false,
      this.selectedOption});
}

class Option {
  final String text;
  final bool isCorrect;
  const Option({required this.text, required this.isCorrect});
}

final Stage1 = [
  //cau 1
  Chapter1(
    text:
        'The house was burgled while the family was____________ in a card game.',
    options: [
      const Option(text: 'buried ', isCorrect: false),
      const Option(text: 'busy', isCorrect: false),
      const Option(text: 'absorbed ', isCorrect: true),
      const Option(text: 'Helping', isCorrect: false),
    ],
  ),
  //cau 2
  Chapter1(
    text: 'I am sorry that I can not ________ your invitation.',
    options: [
      const Option(text: 'take', isCorrect: false),
      const Option(text: 'except', isCorrect: false),
      const Option(text: 'agree', isCorrect: false),
      const Option(text: 'accept', isCorrect: true),
    ],
  ),
  //cau 3
  Chapter1(
    text:
        '_________what he says, he was not even there when the crime was committed.',
    options: [
      const Option(text: 'Following', isCorrect: false),
      const Option(text: 'According to', isCorrect: true),
      const Option(text: 'Hearing', isCorrect: false),
      const Option(text: 'Meaning', isCorrect: false),
    ],
  ),
  //cau 4
  Chapter1(
    text:
        'He gave his listeners a vivid________ of his journey through VietNam.',
    options: [
      const Option(text: 'account', isCorrect: true),
      const Option(text: 'tale', isCorrect: false),
      const Option(text: 'communication', isCorrect: false),
      const Option(text: 'plot', isCorrect: false),
    ],
  ),
  //cau 5
  Chapter1(
    text:
        'The policeman stopped him when he was driving home and________ him of speeding.',
    options: [
      const Option(text: 'charged', isCorrect: false),
      const Option(text: 'accused ', isCorrect: true),
      const Option(text: 'blamed ', isCorrect: false),
      const Option(text: 'arrested', isCorrect: false),
    ],
  ),
  //cau 6
  Chapter1(
    text:
        'His stomach began to___________ because of the bad food he had eaten.',
    options: [
      const Option(text: 'pain', isCorrect: false),
      const Option(text: 'harm', isCorrect: false),
      const Option(text: 'be hurt', isCorrect: false),
      const Option(text: 'ache', isCorrect: true),
    ],
  ),
  //cau 7
  Chapter1(
    text: 'If you_________ money to mine, we shall have enough.',
    options: [
      const Option(text: 'add', isCorrect: true),
      const Option(text: 'combine', isCorrect: false),
      const Option(text: 'unite', isCorrect: false),
      const Option(text: 'Bank', isCorrect: false),
    ],
  ),
  //cau 8
  Chapter1(
    text: 'He was full of________ for her bravery.',
    options: [
      const Option(text: 'energy', isCorrect: false),
      const Option(text: 'admiration', isCorrect: true),
      const Option(text: 'surprise', isCorrect: false),
      const Option(text: 'pride', isCorrect: false),
    ],
  ),
  //cau 9
  Chapter1(
    text: 'This ticket__________ one person to the show.',
    options: [
      const Option(text: 'permits', isCorrect: false),
      const Option(text: 'enters', isCorrect: false),
      const Option(text: 'delivers', isCorrect: false),
      const Option(text: 'admits', isCorrect: true),
    ],
  ),
  //cau 10
  Chapter1(
    text: 'I had quite__________ on my way to work this morning.',
    options: [
      const Option(text: 'an experiment', isCorrect: false),
      const Option(text: 'an adventure', isCorrect: true),
      const Option(text: 'a happening', isCorrect: false),
      const Option(text: 'an affair', isCorrect: false),
    ],
  ),
];
