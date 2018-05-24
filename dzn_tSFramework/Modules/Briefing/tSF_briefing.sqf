// tSF Briefing
// Do not modify this part
#define BRIEFING _briefing = [];
#define TOPIC(NAME) _briefing pushBack ["Diary", [ NAME,
#define END ]];
#define ADD_TOPICS for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Неделю назад наш FOB на востоке был атакован и захвачен силами Вьетконга, информаторы сообщают что часть находящегося там взвода выжили и попали в плен. Скорее всего их будут транспортировать глубже на север, на подконтрольные коммунистам территории. По данным информаторов, они все еще могут находиться в районе POW Camp
<br />Если мы не спасем пленных в ближайшее время, то вероятнее всего спасти их больше не удастся.
<br />
<br />Скауты готовы развернуть CCP в районе Echo или Zanjeer
<br />В случае необходимости вам могут быть переданы M113 на Echo
<br />"
END

TOPIC("А. Враждебные силы:")
"Вьетконг - Нерегулярные силы
<br />до взвода партизан"
END

TOPIC("Б. Дружественные силы:")
"Кавалерия ВС США - Регулярные силы
<br />1'1 - 9 чел.
<br />1'2 - 9 чел.
<br />1'3 - 9 чел.
<br />1'6 - 2 чел.
<br />
<br />"
END

TOPIC("II. Задание:")
"1. Освободить союзных пленных солат в районе 'POW Camp'
<br />2. Доставить пленных на FOB X-Ray
<br />"
END

TOPIC("III. Выполнение:")
" Для первого прохождения реккоммендуется:
<br />1) сделать высадку на вертолете
<br />2) пройтись по джунглям
<br />3) Заказать осветительные"
END

TOPIC("IV. Поддержка:")
"FOB X-Ray
<br /> x2 UH-1 Slick (Piloted by AI)
<br /> CCP deployment allowed
<br />
<br />FOB Echo
<br /> x2 M113 - M2
<br /> x1 M113 - MEV
<br /> Steel Rain - M252 Battery (Provided by AI)
<br /> CCP deployment allowed
<br />
<br />FOB Zanjeer
<br /> CCP deployment allowed
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />SUP NET 51
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3
<br />1'6 - SR CH 6"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"ВАЖНО! есть один офицер, которого можно допросить о нахождении туннелей
<br />Если они его переебут - на выбор:
<br /> a) Можно доиграть как есть и получить частичное выполнение миски
<br /> b) Заролеплеить зевсом допрос раненного вражины и сделать
<br /> ""show_it"" setMarkerAlpha 1;
<br />
<br />- Если вдруг нас много, можно доспавнить немного гуков вокруг лагеря с заложниками и деревни, ну
<br />то если ты вдруг не выставил коэффициенты на старте
<br />- Пленные будут посчитаны на X-Ray только когда им развяжут руки"
END
};

ADD_TOPICS
