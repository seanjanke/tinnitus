import 'package:flutter_localization/flutter_localization.dart';

export 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> locales = [
  MapLocale('en', LocaleData.en),
  MapLocale('de', LocaleData.de),
];

mixin LocaleData {
  // bottom nav
  static const home = 'home';
  static const chat = 'chat';
  static const profile = 'profile';
  static const treatments = 'treatments';
  static const settings = 'settings';
  static const language = 'language';
  static const german = 'german';
  static const english = 'english';
  static const sos = 'sos';
  static const search = 'search';
  static const filter = 'filter';
  static const sosPosition =
      'sosPosition'; // TODO: add better translation and functionality of this
  static const question1 = 'question1';
  static const question2 = 'question2';
  static const question3 = 'question3';
  static const question4 = 'question4';
  static const question5 = 'question5';
  static const question6 = 'question6';
  static const question7 = 'question7';
  static const question8 = 'question8';
  static const question9 = 'question9';
  static const question10 = 'question10';
  static const question11 = 'question11';
  static const question12 = 'question12';
  static const scalarlow = 'scalarlow';
  static const scalarmid = 'scalarmid';
  static const scalarhigh = 'scalarhigh';
  static const back = 'back';
  static const skip = 'skip';
  static const next = 'next';
  static const chocolateMeditation = 'chocolateMeditation';

  static const Map<String, dynamic> en = {
    home: 'Home',
    chat: 'Chat',
    profile: 'Profile',
    treatments: 'Treatments',
    settings: 'Settings',
    language: 'Language',
    german: 'German',
    english: 'English',
    sos: 'SOS',
    search: 'Search',
    filter: 'Filter',
    sosPosition: 'SOS Position',
    question1:
        'I am aware of the ringing in my ears from the moment I wake up until I go to bed.',
    question2:
        'I am worried about the ringing in my ears and whether there is something seriously wrong with my body.',
    question3:
        'If the ringing in my ears continues, my life will no longer be worth living',
    question4:
        'The ringing in my ears makes me more irritable with my family and friends.',
    question5:
        'I worry that the ringing in my ears could damage my physical health.',
    question6: 'I find it difficult to relax because of the ringing in my ears',
    question7:
        'My ri:ging in my ears is often so bad that I can not ignore it.',
    question8:
        'It ta:es me longer to fall asleep because of the ringing in my ears.',
    question9: 'I am more easily depressed because of the ringing in my ears.',
    question10:
        'I ofte: think about whether the ringing in my ears will ever go away.',
    question11: 'I am a victim of my ringing in my ears.',
    question12: 'The ringing in my ears affected my concentration.',
    scalarlow: 'Not True',
    scalarmid: 'Partially True',
    scalarhigh: 'True',
    back: 'Back',
    skip: 'Skip',
    next: 'Next',
    chocolateMeditation: 'Chocolate Meditation',
  };

  static const Map<String, dynamic> de = {
    home: 'Home',
    chat: 'Chat',
    profile: 'Profil',
    treatments: 'Behandlungen',
    settings: 'Einstellungen',
    language: 'Sprache',
    german: 'Deutsch',
    english: 'Englisch',
    sos: 'SOS',
    search: 'Suchen',
    filter: 'Filter',
    sosPosition: 'SOS Position',
    question1:
        'Ich bin mir der Ohrgeräusche vom Aufwachen bis zum Schlafengehen bewusst.',
    question2:
        'Ich mache mir wegen der Ohrgeräusche Sorgen, ob mit meinem Körper ernstlich etwas nicht in Ordnung ist.',
    question3:
        'Wenn die Ohrgeräusche andauern, wird mein Leben nicht mehr lebenswert sein.',
    question4:
        'Aufgrund der Ohrgeräusche bin ich mit meiner Familie und meinen Freunden gereizter.',
    question5:
        'Ich sorge mich, dass die Ohrgeräusche meine körperliche Gesundheit schädigen könnten.',
    question6:
        'Wegen der Ohrgeräusche fällt es mir schwer, mich zu entspannen.',
    question7:
        'Oft sind meine Ohrgeräusche so schlimm, dass ich sie nicht ignorieren kann.',
    question8: 'Wegen der Ohrgeräusche brauche ich länger zum Einschlafen.',
    question9: 'Wegen der Ohrgeräusche bin ich leichter niedergeschlagen.',
    question10:
        'Ich denke oft darüber nach, ob die Ohrgeräusche jemals weggehen werden.',
    question11: 'Ich bin Opfer meiner Ohrgeräusche.',
    question12: 'Die Ohrgeräusche haben meine Konzentration beeinträchtigt.',
    scalarlow: 'Stimmt nicht',
    scalarmid: 'Stimmt teilweise',
    scalarhigh: 'Stimmt',
    back: 'Zurück',
    skip: 'Überspringen',
    next: 'Weiter',
    chocolateMeditation: 'Schokoladenmeditation',
  };
}
