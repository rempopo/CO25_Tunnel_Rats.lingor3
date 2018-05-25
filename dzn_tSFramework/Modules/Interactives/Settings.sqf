
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
			_this addAction ["Ask NVA Informator", {hint "We moved the rest of POWs into the tunnels around this village. You have to circle around in the woods a bit. Entries are hidden away by lots of tall banana bushes. Those will be the tallest plants in the jungle";"show_it" setMarkerAlpha 1;}];
		}
		, "global"
		, true
	]
	
INTRACTIVES_TABLE_END
