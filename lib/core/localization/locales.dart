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
  static const testAgain = 'testAgain';
  static const completed = 'completed';
  static const howEffectiveWas = 'howEffectiveWas';
  static const forYouQuestion = 'forYouQuestion';
  static const save = 'save';
  static const emptySearch = 'emptySearch';

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
        'Improves hearing in patients with hearing loss, while also potentially enhancing their overall quality of life.\n\nBy increasing ambient sound, it helps to mask the tinnitus, making it less noticeable and allowing the brain to focus on external sounds rather than the internal noise of tinnitus.\n\nThis audiological approach can assist in reducing the distressing effects of tinnitus and offer patients a more natural hearing experience.',
    description2:
        'Can significantly reduce the perception of tinnitus, especially in individuals with severe-to-profound bilateral sensorineural hearing loss.\n\nThis method works by optimizing the existing hearing ability, improving speech understanding, and masking the disruptive tinnitus sound.\n\nAs a result, it helps individuals better cope with tinnitus on a daily basis and brings noticeable relief from the constant ringing or buzzing in the ears.',
    description3:
        'A structured educational program designed to enhance understanding of tinnitus and reduce the emotional distress it causes.\n\nIt focuses on providing patients with information about the nature of tinnitus, its causes, and the various management strategies available.\n\nThis is a fundamental part of any comprehensive tinnitus management plan, helping patients develop coping mechanisms and improve their overall well-being.',
    description4:
        'The most widely supported psychological therapy for tinnitus, it has proven to be effective in reducing emotional distress and improving coping mechanisms.\n\nThrough cognitive-behavioral techniques, this therapy helps patients reframe their perceptions of tinnitus and manage the negative emotional reactions it can provoke.\n\nStudies consistently show that it significantly reduces the impact of tinnitus on daily life, making it one of the most reliable treatment options.',
    description5:
        'A combined approach that integrates directive counseling with sound enrichment designed to promote habituation to tinnitus.\n\nThe counseling provides emotional support and practical advice, while sound enrichment aims to help the brain adapt to tinnitus by introducing soothing background sounds.\n\nThis long-term behavioral intervention can significantly reduce the impact of tinnitus, providing ongoing relief for those who struggle with constant ringing or buzzing.',
    description6:
        'A mindfulness-based behavioral therapy that has been shown to reduce the distress caused by tinnitus in some individuals.\n\nThis therapy focuses on increasing awareness of the present moment and developing a non-judgmental attitude toward tinnitus.\n\nBy teaching patients to observe their tinnitus without emotional reaction, it can help reduce the intensity of distress and promote better overall emotional well-being.',
    description7:
        'Music-based interventions have been shown to aid in relaxation and provide distraction from tinnitus symptoms.\n\nHowever, the evidence supporting their effectiveness as a standalone treatment for tinnitus is limited.\n\nWhile music may help some individuals cope with tinnitus, it is not a substitute for more evidence-based therapies and is typically used in conjunction with other treatments.',
    description8:
        'External sounds, such as white noise, are used to reduce the contrast between the tinnitus sound and external noises.\n\nBy masking the tinnitus, this approach helps the brain to habituate to the sound over time, making it less noticeable and distressing.\n\nThis technique is commonly used in sound therapy and can be particularly helpful in environments where the tinnitus is most prominent, like quiet settings.',
    description9:
        'This treatment is primarily used for managing comorbid depression or anxiety, which often accompany tinnitus.\n\nAlthough it can be helpful for improving mood and reducing anxiety, it is not directly effective for treating the symptoms of tinnitus.\n\nPatients may experience an improvement in their overall mental health, which can indirectly help them manage the emotional impact of tinnitus.',
    description10:
        'This approach may help reduce acute distress or promote sleep in the short term, offering temporary relief for those struggling with tinnitus-related anxiety or insomnia.\n\nHowever, due to the risk of dependence, it is not recommended for long-term use.\n\nPatients are advised to seek alternative treatments for long-term management of tinnitus to avoid the potential negative effects of prolonged use.',
    description11:
        'This approach may support sleep quality in tinnitus patients by promoting relaxation and reducing stress levels.\n\nHowever, the evidence for its direct effect on relieving tinnitus symptoms is limited, and it may not be effective for all individuals.\n\nWhile improving sleep can help reduce the overall burden of tinnitus, further research is needed to determine its efficacy in direct tinnitus relief.',
    description12:
        'Currently, there is a lack of reliable evidence supporting this treatment for tinnitus relief.\n\nIn fact, in some cases, the use of this approach may exacerbate symptoms, making the tinnitus more noticeable or distressing.\n\nPatients are advised to approach this option with caution and consult with healthcare providers before attempting it.',
    description13:
        'Behavioral strategies aimed at improving sleep hygiene are crucial for managing tinnitus-related insomnia.\n\nThese strategies focus on creating a sleep-conducive environment and establishing healthy sleep habits.\n\nImproving sleep hygiene is a first-line recommendation for individuals experiencing sleep disturbances due to tinnitus, as it has been shown to significantly improve overall sleep quality.',
    description14:
        'This experimental psychedelic compound is currently being researched for its potential effects on tinnitus and other conditions.\n\nWhile there is some interest in its therapeutic benefits, it is not approved for clinical use in the treatment of tinnitus at this time.\n\nAs an experimental treatment, its safety and efficacy have not been established, and more studies are needed before it can be considered for broader use.',
    description15:
        'Mindfulness meditation focuses on enhancing body awareness and emotional balance, which can be beneficial for stress regulation.\n\nBy fostering a mindful approach to emotions and bodily sensations, this practice can help individuals manage the psychological distress associated with tinnitus.\n\nIn addition to reducing stress, mindfulness meditation supports overall emotional well-being, which can indirectly improve the coping ability of tinnitus sufferers.',
    description16:
        'There is growing evidence supporting the use of mindfulness practices for reducing tinnitus-related distress and reactivity.\n\nMindfulness helps individuals develop greater awareness of their thoughts and emotions, enabling them to respond to tinnitus with less distress.\n\nBy fostering a calm, focused mindset, mindfulness practices have been shown to reduce the intensity of tinnitus-related reactivity and improve overall well-being.',
    description17:
        'This approach focuses on the connection between the gut and brain, which may have potential benefits for mental health.\n\nAlthough the evidence supporting its direct effect on tinnitus is limited, there is some indication that improving gut health may positively influence mood and stress levels.\n\nFurther research is needed to explore its impact specifically on tinnitus and determine its effectiveness for individuals experiencing the condition.',
    description18:
        'Currently, there is no strong evidence supporting the idea that eliminating dairy from the diet can reduce tinnitus symptoms.\n\nHowever, some individuals may experience relief if they have underlying lactose sensitivity, so a trial elimination may be worth considering.\n\nIt is recommended that this approach be used cautiously and only if there is suspicion of lactose intolerance, as it is not a widely supported treatment for tinnitus.',
    description19:
        'This holistic approach investigates potential underlying issues that may contribute to tinnitus symptoms.\n\nIt aims to address broader factors such as stress, emotional health, and lifestyle that could be influencing the condition.\n\nWhile this method shows promise, the evidence for its efficacy in tinnitus care remains limited, and further studies are needed to establish its benefits.',
    description20:
        'Psychodynamic and somatic methods are used to uncover emotional triggers that may be exacerbating tinnitus symptoms.\n\nThese approaches focus on exploring emotional experiences and bodily sensations to identify and process unresolved emotional conflicts.\n\nHowever, these methods have not been clinically validated for tinnitus treatment and should be considered as part of a broader therapeutic strategy.',
    description21:
        'This sensory mindfulness exercise uses chocolate as a focal point to help individuals engage with meditative awareness.\n\nBy focusing on the experience of tasting and savoring chocolate, participants can develop a heightened sense of mindfulness and presence in the moment.\n\nIt may be particularly useful for beginners looking to explore mindfulness meditation and improve their ability to focus and regulate attention.',
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
    testAgain: 'Test Again',
    completed: 'Completed!',
    howEffectiveWas: 'How effective was',
    forYouQuestion: 'for you?',
    save: 'Save',
    emptySearch: 'No results found.\nPlease try a different search term.',
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
        'Verbessert das Hörvermögen von Patienten mit Hörverlust und trägt gleichzeitig dazu bei, die Lebensqualität zu steigern.\n\nDurch die gezielte Verstärkung von Umgebungsgeräuschen wird die Tinnituswahrnehmung reduziert, da das Gehirn mit externen akustischen Reizen beschäftigt ist.\n\nDiese Form der audiologischen Unterstützung kann helfen, die belastenden Auswirkungen von Tinnitus zu mindern und den Betroffenen ein natürlicheres Hörerlebnis zu ermöglichen.',
    description2:
        'Reduziert die Tinnituswahrnehmung signifikant, insbesondere bei Personen mit schwerem bis hochgradigem sensorineuralem Hörverlust auf beiden Ohren.\n\nDiese Methode zielt darauf ab, das bestehende Hörvermögen zu optimieren, indem sie nicht nur das Sprachverstehen verbessert, sondern auch das störende Tinnitusgeräusch überlagert.\n\nDies führt langfristig zu einer besseren Alltagsbewältigung und einer spürbaren Entlastung im Umgang mit Tinnitus.',
    description3:
        'Bietet eine strukturierte Ausbildung zur Verbesserung des Verständnisses von Tinnitus und zu einem umfassenderen Umgang mit der Belastung, die durch das ständige Ohrgeräusch entsteht.\n\nDiese Schulung vermittelt grundlegende Kenntnisse über die Ursachen, Mechanismen und Behandlungsmöglichkeiten von Tinnitus und gibt Betroffenen konkrete Werkzeuge an die Hand, um den psychischen Leidensdruck langfristig zu verringern.\n\nEin essenzieller Bestandteil des modernen Tinnitus-Managements, der auf fundierter wissenschaftlicher Basis entwickelt wurde.',
    description4:
        'Die kognitive Verhaltenstherapie (CBT) ist die am besten untersuchte und belegte psychologische Therapieform für Tinnitus und gilt als Goldstandard in der Behandlung.\n\nSie hilft dabei, negative Gedankenmuster, die durch das belastende Ohrgeräusch ausgelöst werden, zu erkennen und schrittweise zu verändern.\n\nDiese Therapieform reduziert nicht nur den empfundenen Leidensdruck, sondern verbessert auch die allgemeine Bewältigungsstrategie im Alltag und fördert einen entspannteren Umgang mit Tinnitus.',
    description5:
        'Kombiniert eine direktive Beratung mit einer gezielten Geräuschanreicherung, um die Gewöhnung an den Tinnitus (Habituation) zu fördern.\n\nDiese langfristige Verhaltensintervention basiert auf der Idee, das Gehirn durch kontinuierliche akustische Stimulation an die Tinnitusgeräusche zu gewöhnen, sodass diese weniger störend wahrgenommen werden.\n\nDie Methode hat sich als wirksamer Ansatz erwiesen, um die Wahrnehmung des Tinnitus zu reduzieren und das allgemeine Wohlbefinden der Betroffenen nachhaltig zu steigern.',
    description6:
        'Eine auf Achtsamkeit basierende Verhaltenstherapie, die gezielt darauf abzielt, den Tinnitus-Belastungsgrad bei einigen Personen zu reduzieren.\n\nDurch das bewusste Wahrnehmen und Akzeptieren des Tinnitusgeräusches lernen die Betroffenen, ihre emotionale Reaktion auf das störende Geräusch zu verändern und so den empfundenen Leidensdruck zu verringern.\n\nDiese Methode unterstützt dabei, den Fokus weg vom Tinnitus zu lenken und mehr Gelassenheit im Alltag zu entwickeln, was langfristig zu einer besseren Lebensqualität beitragen kann.',
    description7:
        'Musikbasierte Interventionen können hilfreich sein, um Entspannung, Ablenkung und eine angenehme Atmosphäre zu fördern.\n\nDie beruhigende Wirkung von Musik kann die Stresswahrnehmung reduzieren und somit indirekt zu einer Linderung der Tinnitusbelastung beitragen.\n\nAllerdings gibt es bislang keine überzeugenden wissenschaftlichen Beweise dafür, dass solche Interventionen als eigenständige Therapie zur dauerhaften Behandlung von Tinnitus wirksam sind.',
    description8:
        'Die Verwendung von externen Klängen, wie beispielsweise weißem Rauschen oder natürlichen Geräuschen, kann dazu beitragen, den Kontrast zwischen dem Tinnitusgeräusch und der Umgebung zu verringern.\n\nDiese Geräusche dienen dazu, die Aufmerksamkeit des Gehirns von den störenden Ohrgeräuschen abzulenken und die Gewöhnung (Habituation) an den Tinnitus zu fördern.\n\nDiese Methode wird häufig als Teil eines umfassenden Tinnitus-Management-Plans eingesetzt und kann langfristig dazu beitragen, die Belastung durch den Tinnitus zu reduzieren.',
    description9:
        'Bestimmte Medikamente werden zur Behandlung von komorbiden psychischen Erkrankungen wie Depressionen oder Angststörungen eingesetzt, die häufig bei Tinnitus-Patienten auftreten.\n\nObwohl diese Medikamente nicht direkt auf die Tinnitus-Symptome wirken, können sie das allgemeine Wohlbefinden verbessern und den Umgang mit dem Tinnitus erleichtern, indem sie die psychische Belastung verringern.\n\nEs ist jedoch wichtig zu beachten, dass Medikamente allein meist nicht ausreichen, um den Tinnitus vollständig zu bewältigen, und daher oft mit anderen Therapieansätzen kombiniert werden.',
    description10:
        'Bestimmte Entspannungs- oder Beruhigungsmittel können kurzfristig dazu beitragen, akuten Stress zu reduzieren oder den Schlaf zu fördern, was für viele Tinnitus-Betroffene eine wichtige Erleichterung sein kann.\n\nDa jedoch bei längerem Gebrauch ein Risiko für Abhängigkeit besteht, wird der Einsatz dieser Medikamente nur für kurzfristige Anwendungen und in akuten Belastungssituationen empfohlen.\n\nLangfristige Therapieansätze zur Stressbewältigung, wie beispielsweise Entspannungsübungen oder Achtsamkeitstechniken, sind in der Regel eine sicherere und nachhaltigere Alternative.',
    description11:
        'Ein verbesserter Schlaf kann dazu beitragen, die allgemeine Lebensqualität von Tinnitus-Patienten zu steigern, da Schlafprobleme häufig zu den belastendsten Begleiterscheinungen des Tinnitus gehören.\n\nBestimmte Maßnahmen oder Interventionen, wie zum Beispiel kognitive Verhaltenstherapie oder Entspannungstechniken, können dabei helfen, die Schlafqualität zu verbessern und damit auch indirekt den Leidensdruck durch den Tinnitus zu verringern.\n\nObwohl es begrenzte wissenschaftliche Beweise für eine direkte Linderung des Tinnitus durch diese Maßnahmen gibt, berichten viele Patienten über positive Effekte auf ihr Wohlbefinden und ihren Schlafrhythmus.',
    description12:
        'Derzeit fehlen verlässliche wissenschaftliche Beweise, die den Nutzen bestimmter experimenteller Ansätze oder Behandlungsmethoden für die direkte Linderung von Tinnitus belegen.\n\nEs gibt sogar Berichte darüber, dass sich die Symptome bei einigen Personen nach der Anwendung solcher experimentellen Ansätze verschlimmern können, weshalb diese Verfahren mit Vorsicht betrachtet werden sollten.\n\nEine sorgfältige Risiko-Nutzen-Abwägung und eine individuelle Beratung durch Fachpersonal sind daher entscheidend, bevor experimentelle Therapien in Betracht gezogen werden.',
    description13:
        'Verhaltensstrategien zur Verbesserung der Schlafhygiene gelten als eine der wirksamsten Maßnahmen zur Behandlung von Tinnitus-bedingter Schlaflosigkeit.\n\nDiese Strategien umfassen unter anderem das Einhalten regelmäßiger Schlafenszeiten, den Verzicht auf Koffein oder Bildschirmzeit vor dem Schlafengehen sowie die Gestaltung einer ruhigen und angenehmen Schlafumgebung.\n\nDa Schlafprobleme bei vielen Tinnitus-Patienten den Leidensdruck erheblich verstärken, stellen solche schlaffördernden Verhaltensänderungen eine erstklassige Empfehlung dar und können langfristig zu einer spürbaren Entlastung beitragen.',
    description14:
        'Eine experimentelle psychedelische Substanz, die derzeit erforscht wird, um mögliche Effekte auf die Tinnitus-Wahrnehmung zu untersuchen.\n\nObwohl einige Studien auf ein potenzielles therapeutisches Potenzial psychedelischer Substanzen bei der Behandlung bestimmter psychischer Erkrankungen hinweisen, ist der klinische Einsatz in der Tinnitus-Behandlung bisher weder zugelassen noch ausreichend untersucht.\n\nBis belastbare wissenschaftliche Erkenntnisse vorliegen, bleibt der Einsatz dieser Substanz experimentell und sollte nur im Rahmen streng kontrollierter klinischer Studien erfolgen.',
    description15:
        'Achtsamkeitsmeditation ist eine Praxis, die darauf abzielt, die Körperwahrnehmung zu verbessern, das emotionale Gleichgewicht zu fördern und die Stressregulation zu unterstützen.\n\nFür Tinnitus-Betroffene kann diese Form der Meditation eine wirksame Möglichkeit sein, um den empfundenen Stress zu reduzieren, die Aufmerksamkeit auf den gegenwärtigen Moment zu lenken und die emotionale Reaktion auf das Tinnitusgeräusch zu verändern.\n\nLangfristig können regelmäßige Achtsamkeitsübungen dazu beitragen, den Leidensdruck zu verringern und die allgemeine Lebensqualität zu verbessern, insbesondere wenn sie in einen umfassenden Therapieansatz integriert werden.',
    description16:
        'Wachsende wissenschaftliche Beweise zeigen, dass Achtsamkeitsübungen effektiv zur Verringerung von tinnitusbedingtem Stress und Reaktivität beitragen können.\n\nDurch die Fokussierung auf den gegenwärtigen Moment und die Akzeptanz des Tinnitusgeräusches, ohne es zu bewerten oder zu bekämpfen, lernen Betroffene, ihre emotionale Reaktion auf das Geräusch zu regulieren.\n\nLangfristig kann eine regelmäßige Achtsamkeitspraxis helfen, die Wahrnehmung des Tinnitus zu verändern und den Leidensdruck spürbar zu verringern.',
    description17:
        'Dieser Ansatz konzentriert sich auf die enge Verbindung zwischen Darm und Gehirn und untersucht, wie die Darmgesundheit die psychische Gesundheit beeinflussen kann.\n\nObwohl es Hinweise darauf gibt, dass eine ausgewogene Darmflora positive Effekte auf die mentale Gesundheit haben könnte, bleiben die Beweise für direkte Auswirkungen auf Tinnitus derzeit begrenzt.\n\nTrotzdem könnte die Unterstützung der Darmgesundheit, etwa durch eine gesunde Ernährung oder den gezielten Einsatz von Probiotika, ein ergänzender Ansatz sein, um das allgemeine Wohlbefinden zu fördern.',
    description18:
        'Es gibt keine starken wissenschaftlichen Beweise dafür, dass der Verzicht auf Milchprodukte einen direkten Einfluss auf die Tinnitus-Symptome hat.\n\nIn einigen Fällen kann jedoch ein Versuch sinnvoll sein, insbesondere wenn ein Verdacht auf eine Laktoseempfindlichkeit oder eine Unverträglichkeit gegenüber bestimmten Milchproteinen besteht.\n\nEine individuell abgestimmte Ernährungsberatung könnte hilfreich sein, um mögliche Trigger auszuschließen und das allgemeine Wohlbefinden zu steigern, auch wenn ein kausaler Zusammenhang mit Tinnitus nicht gesichert ist.',
    description19:
        'Ein ganzheitlicher Ansatz zielt darauf ab, potenziell zugrunde liegende gesundheitliche oder psychische Probleme zu identifizieren, die zur Wahrnehmung des Tinnitus beitragen könnten.\n\nDieser Ansatz umfasst oft eine Kombination aus medizinischen, psychologischen und verhaltensbezogenen Interventionen und setzt auf eine umfassende Betrachtung des Patienten und seiner Lebensweise.\n\nObwohl die Evidenzbasis für eine direkte Wirkung auf Tinnitus derzeit noch begrenzt ist, könnte ein solcher multimodaler Ansatz langfristig zu einer Verbesserung der Lebensqualität führen.',
    description20:
        'Psychodynamische oder somatische Therapiemethoden konzentrieren sich darauf, unbewusste emotionale Auslöser und körperliche Spannungen aufzudecken, die möglicherweise zur Tinnitus-Wahrnehmung beitragen.\n\nDiese Methoden gehen davon aus, dass ungelöste emotionale Konflikte oder Stressreaktionen eine Rolle bei der Wahrnehmung des Tinnitus spielen könnten.\n\nAllerdings fehlen bislang klinische Validierungen und belastbare Studien, die die Wirksamkeit dieser Ansätze speziell in der Tinnitus-Behandlung belegen.',
    description21:
        'Diese sensorische Achtsamkeitsübung nutzt Schokolade als Hilfsmittel, um die Aufmerksamkeit auf die gegenwärtige Sinneserfahrung zu lenken.\n\nIndem die Übenden sich bewusst auf den Geschmack, die Textur und den Duft der Schokolade konzentrieren, wird ein meditatives Bewusstsein gefördert, das zu einer tieferen Achtsamkeit führen kann.\n\nDiese Methode kann insbesondere Anfängern helfen, ein erstes Gefühl für Achtsamkeit zu entwickeln und den Fokus von belastenden Gedanken oder Empfindungen, wie dem Tinnitus, abzulenken.',
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
    testAgain: 'Erneut testen',
    completed: 'Abgeschlossen!',
    howEffectiveWas: 'Wie effektiv war',
    forYouQuestion: 'für dich?',
    save: 'Speichern',
    emptySearch:
        'Keine Ergebnisse gefunden.\nBitte versuchen Sie einen anderen Suchbegriff.',
  };
}
