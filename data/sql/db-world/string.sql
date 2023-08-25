SET
@string     = 40000,
@mailscroll = 344,
@mailboost  = 403;

DELETE FROM `acore_string` WHERE `entry` BETWEEN @string AND @string+20;
INSERT INTO `acore_string` (`entry`, `content_default`,             `locale_koKR`, `locale_frFR`, `locale_deDE`,                                                                 `locale_zhCN`, `locale_zhTW`, `locale_esES`, `locale_esMX`, `locale_ruRU`) VALUES
(@string, 'Enabled template %u (%s).',                              NULL,          NULL,          'Vorlage aktiviert %u (%s)',                                                   NULL,          NULL,          NULL,          NULL,          'Активированный шаблон %u (%s).'),
(@string+1, 'This template has not been added.',                    NULL,          NULL,          'Diese Vorlage wurde nicht hinzugefügt.',                                      NULL,          NULL,          NULL,          NULL,          'Этот шаблон не был добавлен.'),
(@string+2, 'Disabled template %u (%s).',                           NULL,          NULL,          'Vorlage deaktiviert %u (%s).',                                                NULL,          NULL,          NULL,          NULL,          'Деактивированный шаблон %u (%s).'),
(@string+3, 'The selected template does not apply to you.',         NULL,          NULL,          'Diese ausgewählte Vorlage funktioniert nicht für Sie.',                       NULL,          NULL,          NULL,          NULL,          'Выбранный шаблон не может быть использован.'),
(@string+4, 'You must be a new character to apply this template.',  NULL,          NULL,          'Sie müsst ein neuer Charakter sein um diese Vorlage funktionieren zulassen.', NULL,          NULL,          NULL,          NULL,          'Для того, чтобы применить данный шаблон, должен быть создан новый персонаж.'),
(@string+5, 'Templates currently cannot be applied.',               NULL,          NULL,          'Vorlages dürfen jetzt nicht zu funktionieren.',                               NULL,          NULL,          NULL,          NULL,          'В данный момент щаблоны не могут быть применены.'),
(@string+6, 'You do not meet the security to apply templates.',     NULL,          NULL,          'Sie haben nicht die richtige Sicherheit Vorlages funktionieren zulassen.',    NULL,          NULL,          NULL,          NULL,          'Вы не соответствуете требованиям безопасности, чтобы применить данные шаблоны.'),
(@string+7, 'This template is disabled.',                           NULL,          NULL,          'Diese Vorlage ist deaktiviert.',                                              NULL,          NULL,          NULL,          NULL,          'Этот шаблон отключен.'),
(@string+8, 'Please logout for the template to fully apply.',       NULL,          NULL,          'Bitte melden Sie sich ab um die Vorlage funktionieren zulassen.',             NULL,          NULL,          NULL,          NULL,          'Пожалуйста выполните логаут, чтобы изменения выбранного шаблона полностью вступили в силу.'),
(@string+9, 'Available template sets:',                             NULL,          NULL,          'Verfügbare Vorlagensätze:',                                                   NULL,          NULL,          NULL,          NULL,          'Доступны следующие наборы шаблонов:'),
(@string+10, '%u (%s): %s',                                         NULL,          NULL,          '%u (%s): %s',                                                                 NULL,          NULL,          NULL,          NULL,          '%u (%s): %s'),
(@string+11, '%u (%s)',                                             NULL,          NULL,          '%u (%s)',                                                                     NULL,          NULL,          NULL,          NULL,          '%u (%s)'),
(@string+12, 'There are no added templates.',                       NULL,          NULL,          'Es gibt keine hinzugefügten Vorlagen vorhanden.',                             NULL,          NULL,          NULL,          NULL,          'Добавленые шаблоны отсутствуют.'),
(@string+13, 'Enabled',                                             NULL,          NULL,          'Aktiviert',                                                                   NULL,          NULL,          NULL,          NULL,          'Активирован'),
(@string+14, 'Disabled',                                            NULL,          NULL,          'Deaktiviert',                                                                 NULL,          NULL,          NULL,          NULL,          'Деактивирован'),
(@string+15, 'This server is running the PTR Template module.',     NULL,          NULL,          'Diesen Server fühtr die PTR Vorlage module aus.',                             NULL,          NULL,          NULL,          NULL,          'Данный сервер использует модуль PTR Template.'),
(@string+16, 'There was a problem equipping the attached item(s).', NULL,          NULL,          'Es gab ein Problem ausrüsten des beigefügten Stück(en).',                     NULL,          NULL,          NULL,          NULL,          'Возникла проблема при попытке экипировки данных предметов.'),
(@string+17, 'Character Boost', '캐릭터 업그레이드', 'Sésame', 'Charakteraufwertung', '角色直升', '角色直升', 'Subida de nivel', 'Subida de personaje', 'Повышение уровня'),
(@string+18, 'We\'ve supplied you with a whole new set of high-level gear, but attached you\'ll find all the old items and equipment you once carried.\r\n\r\n - The WoW Dev Team', '여러분께 새로운 고레벨 장비를 제공해 드렸습니다만, 예전에 가지고 다니던 아이템과 장비를 첨부 목록에서 모두 확인하실 수 있습니다.\r\n\r\n - 월드 오브 워크래프트 개발팀 드림', 'Nous vous avons fourni un tout nouvel ensemble d’équipement de haut niveau, mais vous trouverez ci-joint l’ancien équipement que vous portiez auparavant.\r\n\r\nL’équipe de développement de WoW', 'Wir haben Euch mit einem brandneuen Set hochstufiger Ausrüstung ausgestattet. Im Anhang befinden sich jedoch außerdem alle Gegenstände, die Ihr früher getragen habt.\r\n\r\n - Das Entwicklerteam von WoW', '我们为您准备了一整套全新的高级装备，但您也可以在附件中找到您原本携带的所有旧物品和装备。\r\n\r\n- 魔兽世界研发团队', '我們已提供了你一整套全新的高等級裝備，不過你還是可以在這封信的附件找到你先前所有的舊裝備和物品。\r\n\r\n - 魔獸世界研發團隊', 'Te hemos provisto de un nuevo conjunto de equipo de alto nivel, pero aquí tienes todos los objetos y el equipo que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', 'Te hemos suministrado un nuevo conjunto completo de equipo de alto nivel, pero adjuntos encontrarás todos los objetos y el equipo antiguos que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', 'Примите в подарок совершенно новый комплект экипировки высокого уровня. К нему прилагаются некоторые предметы экипировки, которые вы носили раньше.\r\n\r\nКоманда разработчиков WoW'),
(@string+19, 'Scroll of Resurrection Items', '부활의 두루마리 아이템', 'Objets de parchemin de résurrection', 'Rolle der Auferstehung - Gegenstände', '复活卷轴物品', '重返榮耀物品', 'Objetos del Hechizo de resurrección', 'Objetos del Pergamino de resurrección', 'Свиток воскрешения: предметы'),
(@string+20, 'Welcome back to the World of Warcraft!\r\n\r\nWe\'ve supplied you with a whole new set of high-level gear, but attached you\'ll find all the old items and equipment you once carried.\r\n\r\n - The WoW Dev Team', '월드 오브 워크래프트에 다시 오신 걸 환영합니다!\r\n\r\n여러분께 새로운 고레벨 장비를 제공해 드렸습니다만, 예전에 가지고 다니던 아이템과 장비를 첨부 목록에서 모두 확인하실 수 있습니다.\r\n\r\n- 월드 오브 워크래프트 개발팀 드림', 'Nous sommes heureux de vous revoir dans World of Warcraft !\r\n\r\nNous vous avons fourni un tout nouvel équipement de haut niveau, mais vous trouverez ci-joint les anciens objets et équipements que vous portiez auparavant.\r\n\r\n - L\'équipe de développement de WoW', 'Willkommen zurück bei World of Warcraft!\r\n\r\nWir haben Euch mit einem brandneuen Set hochstufiger Ausrüstung ausgestattet - im Anhang befinden sich jedoch außerdem Eure gesamten, früher von Euch getragenen Gegenstände.\r\n\r\n - Das Entwicklerteam von WoW', '欢迎回归魔兽世界！\r\n\r\n我们为您准备了一整套全新的高级装备，但您也可以在附件中找到您原本携带的所有旧物品和装备。\r\n\r\n - 《魔兽世界》开发团队', '歡迎回到魔獸世界!\r\n\r\n我們為你準備了一整套全新高等級專用的套裝，在附件中你將會發現你曾經攜帶的所有舊物品與裝備。\r\n\r\n - 魔獸世界研發團隊', '¡$gBienvenido:Bienvenida; de nuevo a World of Warcraft!\r\n\r\nTe hemos suministrado un nuevo conjunto completo de equipo de alto nivel, pero adjuntos encontrarás todos los objetos y el equipo antiguos que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', '¡$gBienvenido:Bienvenida; de nuevo a World of Warcraft!\r\n\r\nTe hemos suministrado un nuevo conjunto completo de equipo de alto nivel, pero adjuntos encontrarás todos los objetos y el equipo antiguos que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', 'С возвращением в World of Warcraft!\r\n\r\nПримите в подарок совершенно новый комплект экипировки высокого уровня. К нему прилагаются некоторые предметы экипировки, которые вы носили раньше.\r\n\r\n - Разработчики World of Warcraft');

DELETE FROM `mailtemplate_dbc` WHERE `ID` IN (@mailscroll, @mailboost);
INSERT INTO `mailtemplate_dbc` (`ID`, `Subject_Lang_enUS`, `Subject_Lang_enGB`, `Subject_Lang_koKR`, `Subject_Lang_frFR`, `Subject_Lang_deDE`, `Subject_Lang_enCN`, `Subject_Lang_zhCN`, `Subject_Lang_enTW`, `Subject_Lang_zhTW`, `Subject_Lang_esES`, `Subject_Lang_esMX`, `Subject_Lang_ruRU`, `Subject_Lang_ptPT`, `Subject_Lang_ptBR`, `Subject_Lang_Mask`, `Body_Lang_enUS`, `Body_Lang_enGB`, `Body_Lang_koKR`, `Body_Lang_frFR`, `Body_Lang_deDE`, `Body_Lang_enCN`, `Body_Lang_zhCN`, `Body_Lang_enTW`, `Body_Lang_zhTW`, `Body_Lang_esES`, `Body_Lang_esMX`, `Body_Lang_ruRU`, `Body_Lang_ptPT`, `Body_Lang_ptBR`, `Body_Lang_Mask`) VALUES
(@mailscroll, 'Scroll of Resurrection Items', 'Scroll of Resurrection Items', '부활의 두루마리 아이템', 'Objets de parchemin de résurrection', 'Rolle der Auferstehung - Gegenstände', '复活卷轴物品', '复活卷轴物品', '重返榮耀物品', '重返榮耀物品', 'Objetos del Hechizo de resurrección', 'Objetos del Pergamino de resurrección', 'Свиток воскрешения: предметы', 'Itens do Pergaminho da Ressurreição', 'Itens do Pergaminho da Ressurreição', 0, 'Welcome back to the World of Warcraft!\r\n\r\nWe\'ve supplied you with a whole new set of high-level gear, but attached you\'ll find all the old items and equipment you once carried.\r\n\r\n - The WoW Dev Team', 'Welcome back to the World of Warcraft!\r\n\r\nWe\'ve supplied you with a whole new set of high-level gear, but attached you\'ll find all the old items and equipment you once carried.\r\n\r\n - The WoW Dev Team', '월드 오브 워크래프트에 다시 오신 걸 환영합니다!\r\n\r\n여러분께 새로운 고레벨 장비를 제공해 드렸습니다만, 예전에 가지고 다니던 아이템과 장비를 첨부 목록에서 모두 확인하실 수 있습니다.\r\n\r\n- 월드 오브 워크래프트 개발팀 드림', 'Nous sommes heureux de vous revoir dans World of Warcraft !\r\n\r\nNous vous avons fourni un tout nouvel équipement de haut niveau, mais vous trouverez ci-joint les anciens objets et équipements que vous portiez auparavant.\r\n\r\n - L\'équipe de développement de WoW', 'Willkommen zurück bei World of Warcraft!\r\n\r\nWir haben Euch mit einem brandneuen Set hochstufiger Ausrüstung ausgestattet - im Anhang befinden sich jedoch außerdem Eure gesamten, früher von Euch getragenen Gegenstände.\r\n\r\n - Das Entwicklerteam von WoW', '欢迎回归魔兽世界！\r\n\r\n我们为您准备了一整套全新的高级装备，但您也可以在附件中找到您原本携带的所有旧物品和装备。\r\n\r\n - 《魔兽世界》开发团队', '欢迎回归魔兽世界！\r\n\r\n我们为您准备了一整套全新的高级装备，但您也可以在附件中找到您原本携带的所有旧物品和装备。\r\n\r\n - 《魔兽世界》开发团队', '歡迎回到魔獸世界!\r\n\r\n我們為你準備了一整套全新高等級專用的套裝，在附件中你將會發現你曾經攜帶的所有舊物品與裝備。\r\n\r\n - 魔獸世界研發團隊', '歡迎回到魔獸世界!\r\n\r\n我們為你準備了一整套全新高等級專用的套裝，在附件中你將會發現你曾經攜帶的所有舊物品與裝備。\r\n\r\n - 魔獸世界研發團隊', '¡$gBienvenido:Bienvenida; de nuevo a World of Warcraft!\r\n\r\nTe hemos suministrado un nuevo conjunto completo de equipo de alto nivel, pero adjuntos encontrarás todos los objetos y el equipo antiguos que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', '¡$gBienvenido:Bienvenida; de nuevo a World of Warcraft!\r\n\r\nTe hemos suministrado un nuevo conjunto completo de equipo de alto nivel, pero adjuntos encontrarás todos los objetos y el equipo antiguos que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', 'С возвращением в World of Warcraft!\r\n\r\nПримите в подарок совершенно новый комплект экипировки высокого уровня. К нему прилагаются некоторые предметы экипировки, которые вы носили раньше.\r\n\r\n - Разработчики World of Warcraft', '$GBem-vindo:Bem-vinda; de volta a World of Warcraft!\r\n\r\nNós lhe fornecemos um novo conjunto de equipamentos de alto nível, mas, em anexo, você encontrará todos os antigos itens e equipamentos que você possuía.\r\n\r\n - Equipe de Desenvolvimento de WoW', '$GBem-vindo:Bem-vinda; de volta a World of Warcraft!\r\n\r\nNós lhe fornecemos um novo conjunto de equipamentos de alto nível, mas, em anexo, você encontrará todos os antigos itens e equipamentos que você possuía.\r\n\r\n - Equipe de Desenvolvimento de WoW', 0),
(@mailboost, 'Character Boost', 'Character Boost', '캐릭터 업그레이드', 'Sésame', 'Charakteraufwertung', '角色直升', '角色直升', '角色直升', '角色直升', 'Subida de nivel', 'Subida de personaje', 'Повышение уровня', 'Upgrade-Personagem', 'Upgrade-Personagem', 0, 'We\'ve supplied you with a whole new set of high-level gear, but attached you\'ll find all the old items and equipment you once carried.\r\n\r\n - The WoW Dev Team', 'We\'ve supplied you with a whole new set of high-level gear, but attached you\'ll find all the old items and equipment you once carried.\r\n\r\n - The WoW Dev Team', '여러분께 새로운 고레벨 장비를 제공해 드렸습니다만, 예전에 가지고 다니던 아이템과 장비를 첨부 목록에서 모두 확인하실 수 있습니다.\r\n\r\n - 월드 오브 워크래프트 개발팀 드림', 'Nous vous avons fourni un tout nouvel ensemble d’équipement de haut niveau, mais vous trouverez ci-joint l’ancien équipement que vous portiez auparavant.\r\n\r\nL’équipe de développement de WoW', 'Wir haben Euch mit einem brandneuen Set hochstufiger Ausrüstung ausgestattet. Im Anhang befinden sich jedoch außerdem alle Gegenstände, die Ihr früher getragen habt.\r\n\r\n - Das Entwicklerteam von WoW', '我们为您准备了一整套全新的高级装备，但您也可以在附件中找到您原本携带的所有旧物品和装备。\r\n\r\n- 魔兽世界研发团队', '我们为您准备了一整套全新的高级装备，但您也可以在附件中找到您原本携带的所有旧物品和装备。\r\n\r\n- 魔兽世界研发团队', '我們已提供了你一整套全新的高等級裝備，不過你還是可以在這封信的附件找到你先前所有的舊裝備和物品。\r\n\r\n - 魔獸世界研發團隊', '我們已提供了你一整套全新的高等級裝備，不過你還是可以在這封信的附件找到你先前所有的舊裝備和物品。\r\n\r\n - 魔獸世界研發團隊', 'Te hemos provisto de un nuevo conjunto de equipo de alto nivel, pero aquí tienes todos los objetos y el equipo que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', 'Te hemos suministrado un nuevo conjunto completo de equipo de alto nivel, pero adjuntos encontrarás todos los objetos y el equipo antiguos que llevabas.\r\n\r\n - El equipo de desarrollo de WoW', 'Примите в подарок совершенно новый комплект экипировки высокого уровня. К нему прилагаются некоторые предметы экипировки, которые вы носили раньше.\r\n\r\nКоманда разработчиков WoW', 'Nós lhe fornecemos um novo conjunto de equipamentos de alto nível, mas, em anexo, você encontrará todos os antigos itens e equipamentos que você possuía.\r\n\r\n - Equipe de Desenvolvimento de WoW', 'Nós lhe fornecemos um novo conjunto de equipamentos de alto nível, mas, em anexo, você encontrará todos os antigos itens e equipamentos que você possuía.\r\n\r\n - Equipe de Desenvolvimento de WoW', 0);
