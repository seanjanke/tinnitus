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
  static const yourProfile = 'yourProfile';
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
  static const category1 = 'category1';
  static const category2 = 'category2';
  static const category3 = 'category3';
  static const category4 = 'category4';
  static const category5 = 'category5';
  static const category6 = 'category6';
  static const category7 = 'category7';
  static const category8 = 'category8';
  static const recommendation1 = 'recommendation1';
  static const recommendation2 = 'recommendation2';
  static const recommendation3 = 'recommendation3';
  static const recommendation4 = 'recommendation4';
  static const recommendation5 = 'recommendation5';
  static const recommendation6 = 'recommendation6';
  static const recommendation7 = 'recommendation7';
  static const recommendation8 = 'recommendation8';
  static const recommendation9 = 'recommendation9';
  static const recommendation10 = 'recommendation10';
  static const recommendation11 = 'recommendation11';
  static const recommendation12 = 'recommendation12';
  static const recommendation13 = 'recommendation13';
  static const recommendation14 = 'recommendation14';
  static const recommendation15 = 'recommendation15';
  static const recommendation16 = 'recommendation16';
  static const recommendation17 = 'recommendation17';
  static const recommendation18 = 'recommendation18';
  static const recommendation19 = 'recommendation19';
  static const recommendation20 = 'recommendation20';
  static const recommendation21 = 'recommendation21';
  static const description1 = 'description1';
  static const description2 = 'description2';
  static const description3 = 'description3';
  static const description4 = 'description4';
  static const description5 = 'description5';
  static const description6 = 'description6';
  static const description7 = 'description7';
  static const description8 = 'description8';
  static const description9 = 'description9';
  static const description10 = 'description10';
  static const description11 = 'description11';
  static const description12 = 'description12';
  static const description13 = 'description13';
  static const description14 = 'description14';
  static const description15 = 'description15';
  static const description16 = 'description16';
  static const description17 = 'description17';
  static const description18 = 'description18';
  static const description19 = 'description19';
  static const description20 = 'description20';
  static const description21 = 'description21';
  static const sendMessage = 'sendMessage';
  static const chatWithAI = 'chatWithAI';
  static const back = 'back';
  static const skip = 'skip';
  static const next = 'next';
  static const forYou = 'forYou';
  static const goodMorning = 'goodMorning';
  static const personalInformation = 'personalInformation';
  static const personalInformationDescription =
      'personalInformationDescription';
  static const preferences = 'preferences';
  static const preferencesDescription = 'preferencesDescription';
  static const severityLevel = 'severityLevel';
  static const severityLevel1Description = 'severityLevel1Description';
  static const severityLevel2Description = 'severityLevel2Description';
  static const severityLevel3Description = 'severityLevel3Description';
  static const severityLevel4Description = 'severityLevel4Description';

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
        'My ringing in my ears is often so bad that I can not ignore it.',
    question8:
        'It takes me longer to fall asleep because of the ringing in my ears.',
    question9: 'I am more easily depressed because of the ringing in my ears.',
    question10:
        'I often think about whether the ringing in my ears will ever go away.',
    question11: 'I am a victim of my ringing in my ears.',
    question12: 'The ringing in my ears affected my concentration.',
    scalarlow: 'False',
    scalarmid: 'Partially',
    scalarhigh: 'True',
    category1: 'Hearing problem',
    category2: 'Tinnitus-related',
    category3: 'Social Emotional Health (Emotional distress)',
    category4: 'Other comorbidities-related',
    category5: 'Sleep disturbances',
    category6: 'Spiritual',
    category7: 'Lifestyle',
    category8: 'Somatic complaints',
    recommendation1: 'Hearing aids',
    recommendation2: 'Cochlear implant',
    recommendation3: 'Tinnitus counseling',
    recommendation4: 'Cognitive behavioural therapy',
    recommendation5: 'Tinnitus retraining therapy',
    recommendation6: 'Acceptance commitment therapy',
    recommendation7: 'Music therapy',
    recommendation8: 'Sound therapy',
    recommendation9: 'Antidepressants',
    recommendation10: 'Benzodiazepines',
    recommendation11: 'Melatonin',
    recommendation12: 'Cannabis',
    recommendation13: 'Sleep hygiene',
    recommendation14: 'Psilocybin',
    recommendation15: 'Vipassana meditation',
    recommendation16: 'Mindfulness',
    recommendation17: 'Gut-brain diet recommendation',
    recommendation18: 'No-dairy diet',
    recommendation19: 'Emotional decoding',
    recommendation20: 'Functional medicine referral',
    recommendation21: 'Chocolate meditation',
    description1:
        'Improve hearing in patients with hearing loss and may reduce tinnitus perception by increasing ambient sound.',
    description2:
        'Can significantly reduce tinnitus perception in individuals with severe-to-profound bilateral sensorineural hearing loss.',
    description3:
        'Structured education to improve understanding of tinnitus and reduce distress; foundational part of tinnitus management.',
    description4:
        'The most evidence-supported psychological therapy for tinnitus; reduces distress and improves coping.',
    description5:
        'Combines directive counseling with sound enrichment aimed at habituation; long-term behavioral intervention.',
    description6:
        'A mindfulness-based behavioral therapy shown to reduce tinnitus distress in some individuals.',
    description7:
        'Music-based interventions may support relaxation and distraction but lack strong evidence as standalone therapy.',
    description8:
        'Use of external sounds (e.g. white noise) to reduce tinnitus contrast and promote habituation.',
    description9:
        'Used for treating comorbid depression or anxiety; not directly effective for tinnitus symptoms.',
    description10:
        'May reduce acute distress or aid sleep short-term; not recommended for long-term use due to dependence risk.',
    description11:
        'May support sleep quality in tinnitus patients; limited evidence for direct tinnitus relief.',
    description12:
        'Currently lacks reliable evidence and may worsen symptoms in some individuals.',
    description13:
        'Behavioral strategies to improve sleep hygiene; first-line recommendation for tinnitus-related insomnia.',
    description14:
        'Experimental psychedelic compound being researched; not approved for clinical use in tinnitus treatment.',
    description15:
        'Mindfulness meditation practice focused on body awareness and emotional balance; supports stress regulation.',
    description16:
        'Growing evidence supports mindfulness for reducing tinnitus-related distress and reactivity.',
    description17:
        'Focuses on gut-brain connection; may support mental health, though evidence for tinnitus is limited.',
    description18:
        'No strong evidence supports dairy elimination for tinnitus; trial only if lactose sensitivity is suspected.',
    description19:
        'Holistic approach investigating potential underlying issues; evidence in tinnitus care is still limited.',
    description20:
        'Psychodynamic or somatic methods to uncover emotional triggers; not clinically validated for tinnitus.',
    description21:
        'A sensory mindfulness exercise using chocolate; may help beginners engage with meditative awareness.',
    sendMessage: 'Send Message',
    chatWithAI: 'Chat with AI',
    back: 'Back',
    skip: 'Skip',
    next: 'Next',
    forYou: 'Recommended For You',
    goodMorning: 'Good Morning',
    personalInformation: 'Personal Information',
    personalInformationDescription: 'Name, age, gender, disabilities, etc.',
    preferences: 'Preferences',
    preferencesDescription: 'Preferences Description',
    severityLevel: 'Severity Level',
    severityLevel1Description:
        'Your tinnitus currently only seems to be a minor psychological burden and hardly affects your everyday life.',
    severityLevel2Description:
        'Your tinnitus is causing noticeable but still moderate stress - further clarification or targeted support may be helpful.',
    severityLevel3Description:
        'The tinnitus is a significant psychological burden for you - therapeutic measures should be considered.',
    severityLevel4Description:
        'Your tinnitus is having a major impact on your well-being - comprehensive specialist care is urgently recommended.',
    yourProfile: 'Your Profile',
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
    scalarlow: 'Falsch',
    scalarmid: 'Teilweise',
    scalarhigh: 'Stimmt',
    description1:
        'Verbessert das Hörvermögen von Patienten mit Hörverlust und kann die Tinnituswahrnehmung durch Verstärkung der Umgebungsgeräusche verringern.',
    description2:
        'Kann die Tinnituswahrnehmung bei Personen mit schwerem bis hochgradigem beidseitigem sensorineuralem Hörverlust deutlich verringern.',
    description3:
        'Strukturierte Ausbildung zur Verbesserung des Verständnisses von Tinnitus und zur Verringerung des Leidensdrucks; grundlegender Bestandteil des Tinnitus-Managements.',
    description4:
        'Die am besten belegte psychologische Therapie für Tinnitus; verringert den Leidensdruck und verbessert die Bewältigung.',
    description5:
        'Kombiniert direktive Beratung mit Geräuschanreicherung zur Gewöhnung; langfristige Verhaltensintervention. ',
    description6:
        'Eine auf Achtsamkeit basierende Verhaltenstherapie, die nachweislich den Tinnitus-Belastungsgrad bei einigen Personen reduziert.',
    description7:
        'Musikbasierte Interventionen können Entspannung und Ablenkung unterstützen, aber es gibt keine überzeugenden Beweise für eine eigenständige Therapie.',
    description8:
        'Verwendung von externen Klängen (z. B. weißes Rauschen), um den Tinnituskontrast zu verringern und die Gewöhnung zu fördern.',
    description9:
        'Wird zur Behandlung von komorbiden Depressionen oder Ängsten eingesetzt; nicht direkt wirksam bei Tinnitus-Symptomen.',
    description10:
        'Kann akuten Stress verringern oder kurzfristig den Schlaf fördern; aufgrund des Abhängigkeitsrisikos nicht für den Langzeitgebrauch empfohlen.',
    description11:
        'Kann die Schlafqualität bei Tinnitus-Patienten verbessern; begrenzte Beweise für eine direkte Linderung des Tinnitus.',
    description12:
        'Derzeit gibt es keine verlässlichen Beweise und bei einigen Personen können sich die Symptome verschlimmern.',
    description13:
        'Verhaltensstrategien zur Verbesserung der Schlafhygiene; Erstklassige Empfehlung für Tinnitus-bedingte Schlaflosigkeit.',
    description14:
        'Experimentelle psychedelische Substanz, die erforscht wird; nicht für den klinischen Einsatz in der Tinnitus-Behandlung zugelassen.',
    description15:
        'Achtsamkeitsmeditation, die sich auf Körperwahrnehmung und emotionales Gleichgewicht konzentriert; unterstützt die Stressregulierung.',
    description16:
        'Wachsende Beweise unterstützen Achtsamkeit zur Verringerung von tinnitusbedingtem Stress und Reaktivität. ',
    description17:
        'Konzentriert sich auf die Verbindung zwischen Darm und Gehirn; kann die psychische Gesundheit unterstützen, obwohl die Beweise für Tinnitus begrenzt sind.',
    description18:
        'Keine starken Beweise unterstützen den Verzicht auf Milchprodukte bei Tinnitus; Versuch nur bei Verdacht auf Laktoseempfindlichkeit. ',
    description19:
        'Ganzheitlicher Ansatz, der potenziell zugrundeliegende Probleme untersucht; die Evidenz in der Tinnitusbehandlung ist noch begrenzt.',
    description20:
        'Psychodynamische oder somatische Methoden, um emotionale Auslöser aufzudecken; nicht klinisch validiert für Tinnitus.',
    description21:
        'Eine sensorische Achtsamkeitsübung unter Verwendung von Schokolade; kann Anfängern helfen, sich mit meditativem Bewusstsein zu beschäftigen.',
    recommendation1: 'Hörgeräte',
    recommendation2: 'Cochlea-Implantat',
    recommendation3: 'Tinnitus-Beratung',
    recommendation4: 'Kognitive Verhaltenstherapie',
    recommendation5: 'Tinnitus-Retraining-Therapie',
    recommendation6: 'Akzeptanz- und Commitment-Therapie',
    recommendation7: 'Musiktherapie',
    recommendation8: 'Klangtherapie',
    recommendation9: 'Antidepressiva',
    recommendation10: 'Benzodiazepine',
    recommendation11: 'Melatonin',
    recommendation12: 'Cannabis',
    recommendation13: 'Schlafhygiene',
    recommendation14: 'Psilocybin',
    recommendation15: 'Vipassana-Meditation',
    recommendation16: 'Achtsamkeit',
    recommendation17: 'Darm-Gehirn-Diätempfehlung',
    recommendation18: 'Keine Milchprodukte',
    recommendation19: 'Emotionales Decoding',
    recommendation20: 'Überweisung zur funktionellen Medizin',
    recommendation21: 'Schokoladenmeditation',
    sendMessage: 'Nachricht senden',
    chatWithAI: 'Mit KI chatten',
    back: 'Zurück',
    skip: 'Übersp.',
    next: 'Weiter',
    forYou: 'Für dich empfohlen',
    goodMorning: 'Guten Morgen',
    personalInformation: 'Persönliche Informationen',
    personalInformationDescription:
        'Name, Alter, Geschlecht, Beeinträchtigungen, usw.',
    preferences: 'Präferenzen',
    preferencesDescription: 'Präferenzen Beschreibung',
    severityLevel: 'Schweregrad der Belastung',
    severityLevel1Description:
        'Ihr Tinnitus scheint aktuell nur eine geringe psychische Belastung darzustellen und beeinträchtigt Ihren Alltag kaum.',
    severityLevel2Description:
        'Ihr Tinnitus verursacht eine spürbare, aber noch moderate Belastung – eine weitere Abklärung oder gezielte Unterstützung kann hilfreich sein.',
    severityLevel3Description:
        'Der Tinnitus stellt eine deutliche psychische Belastung für Sie dar – therapeutische Maßnahmen sollten in Betracht gezogen werden.',
    severityLevel4Description:
        'Ihr Tinnitus wirkt sich stark auf Ihr Wohlbefinden aus – eine umfassende fachliche Betreuung ist dringend empfehlenswert.',
    yourProfile: 'Dein Profil',
  };
}
