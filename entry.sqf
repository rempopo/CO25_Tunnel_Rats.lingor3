//
// L1 Exit/enry points
//
#define sound_off enableEnvironment [false, false];
#define sound_on enableEnvironment [true, true];


// L1 Exit/enry points
LP1 = [6041.73,6883.68,4.97927];
	L1e addAction ["Залезть внутрь", { player setpos LP1; sound_off}];
	L1 addAction ["Вылезти наружу", { player setpos (getpos LX1); sound_on}];

// L2 Exit/enry points
LP2 = [6008.24,6991.34,4.97927];
	L2e addAction ["Залезть внутрь", { player setpos LP2;sound_off}];
	L2 addAction ["Вылезти наружу", { player setpos (getpos LX2); sound_on}];

// L3 Exit/enry points
LP3 = [6005.22,7044.42,4.97927];
	L3e addAction ["Залезть внутрь", { player setpos LP3;sound_off}];
	L3 addAction ["Вылезти наружу", { player setpos (getpos LX3); sound_on}];

//
// Right points
//

// R1 Exit/enry points
RP1 = [6236.78,6918.34,5.66377];
	R1e addAction ["Залезть внутрь", { player setpos RP1; sound_off}];
	R1 addAction ["Вылезти наружу", { player setpos (getpos RX1); sound_on}];

// R2 Exit/enry points
RP2 = [6281.5,7093.95,5.30906];
	R2e addAction ["Залезть внутрь", { player setpos RP2; sound_off}];
	R2 addAction ["Вылезти наружу", { player setpos (getpos RX2); sound_on}];

// R3 Exit/enry points
RP3 = [6298.85,7170.55,0];
	R3e addAction ["Залезть внутрь", { player setpos RP3; sound_off}];
	R3 addAction ["Вылезти наружу", { player setpos (getpos RX3); sound_on}];

// R4 Exit/enry points
RP4 = [6217.72,7178.25,5.29527];
	R4e addAction ["Залезть внутрь", { player setpos RP4; sound_off}];
	R4 addAction ["Вылезти наружу", { player setpos (getpos RX4); sound_on}];
