
/*
	Configuration of interative objects:
		[ @List of Classname or @List of Objects to apply, @CodeToExecute, @Client/Server/Global ]

		0:  @List of Classname OR List of @Objects  -   if list of classname is used, then all map objects with given class will be applyed
		1:  @CodeToExecute  -   code to execute, _this as reference; will be spawned
		2:  @Client/Server/Global   -   locality run ("client","server","global")
		3:  @Persistant(Boolean) - will apply code for each new entities created during the game (false by default)

		To manually apply code, use
			[@ReferenceList, @Code] call dzn_fnc_interactives_executeEach
*/
#define	INTRACTIVES_TABLE		dzn_interactives_objectsAndClasses = [
#define	INTRACTIVES_TABLE_END	];

INTRACTIVES_TABLE

	[
		[tell_me]
		, {
			_this addAction ["Опросить информатора", {
				hint "Мы перевели остальных пленных в туннели под этой деревней (помечает на карте). Прочешите джунгли вокруг деревни и вы найдёте входы в туннели. Они накрыты камуфляжной сеткой и прикрыты крупными банановыми кустами, это будут самые высокие растения в джунглях, ну кроме самих деревьев?";
			"show_it" setMarkerAlpha 1;
			"show_it1" setMarkerAlpha 1;
			"show_it2" setMarkerAlpha 1;
			"show_it3" setMarkerAlpha 1;
			}];
		}
		, "global"
		, true
	]
	
INTRACTIVES_TABLE_END
