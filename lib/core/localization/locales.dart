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
  };
}
