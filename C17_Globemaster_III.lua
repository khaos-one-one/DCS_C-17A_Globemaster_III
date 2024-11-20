C17_Globemaster_III =  {
      
		Name 			= 'C17_Globemaster_III',--
		DisplayName		= _('C17_Globemaster_III'),--
        Picture 		= "C17_Globemaster_III.png",
        Rate 			= "40",
        Shape			= "C17_Globemaster_III",--	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        singleInFlight	= true,
	shape_table_data 	= 
	{
		{
			file  	 	= 'C17_Globemaster_III';--
			life  	 	= 40; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'C17_Globemaster_III-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'C17_Globemaster_III';--
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYGROUND";
		},
		{
			name  		= "C17_Globemaster_III-oblomok";
			file  		= "C17_Globemaster_III-oblomok";
			fire  		= { 240, 2};
		},
	},
		
	mapclasskey 		= "P0091000029",
	--attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "Transports", "Refuelable",},
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER ,
        "Transports", "Refuelable","Datalink","Link16"},

	Categories 			= {
	},	

	LandRWCategories = 
    {
        [1] = 
        {
            Name = "AircraftCarrier With Arresting Gear",
        }, -- end of [1]
    }, -- end of LandRWCategories
    TakeOffRWCategories = 
    {
        [1] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, -- end of [1]
    }, -- end of TakeOffRWCategories
	-------------------------
	
		M_empty	=	128100,--44663 kg
		M_nominal	=	262656,--100000,
		M_max	=	265350,--146000,
		M_fuel_max	=	134556,--90700,
		InternalCargo = {
		nominalCapacity = 60000,
		maximalCapacity = 77519, --KG
		para_unit_point = 102, -- Anzahl der Fallschirmjäger (Infanterie/1.4375)
		unit_point = 134, 	  -- Anzahl der Infanterie
		area = {43.8, 5.79, 4.11},-- Das Innenvolumen des Laderaums ist lang, breit, hoch, m
		unit_block = {0.76, 0.775}-- Abmessungen für einen Fallschirmjäger, Länge, Breite, m
		},
		H_max	=	13716,
		average_fuel_consumption	=	0.277,
		CAS_min	=	54,
		V_opt	=	231.388,
		V_take_off	=	70,--58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	true,
		has_differential_stabilizer = true,
		main_gear_pos = 	{-2.50,	-4.588,	3.781},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{19.733,	-4.588,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-3.5,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	237.78,--280.28,M/S
		V_max_h	=	237.78,--280.28,
		tanker_type	=	1,		
		wing_area	=	353,--226,
		wing_span	=	51.8,--51.76,
		thrust_sum_max	=	73376,--38100,
		thrust_sum_ab	=	73376,--38100,
		Vy_max	=	10,
		length	=	53.04,
		height	=	16.80,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.69,--0.9,
		range	=	4482, --KM
		crew_size	=	3,
		RCS	=	80,
		Ny_max_e	=	8,
		detection_range_max	=	400,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-13.527,	4.161,	25.87},
		nose_gear_wheel_diameter	=	1.30,
		main_gear_wheel_diameter	=	1.30,
		engines_nozzles = 
		{
			{
				pos = 	{-2.988,	0.49,	-14.527},
				elevation	=	0,
				diameter	=	2.48,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02,  				-- 0.02 alter Wert
			}, 

			{
				pos = 	{-0.471,	1.099,	-7.93},
				elevation	=	0,
				diameter	=	2.48,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02,  				
			}, 
			{
				pos = 	{-0.471,	1.099,	7.93},
				elevation	=	0,
				diameter	=	2.48,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, 
			{
				pos = 	{-2.988,	0.49,	14.527},
				elevation	=	0,
				diameter	=	2.48,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, 
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{15.1599,	2.2806,	0},
		fires_pos = 
		{
			[1] = 	{-1.503,	3.288,	0},
			[2] = 	{-1.503,	3.288,	4.191},
			[3] = 	{-1.503,	3.288,	-4.191},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{2.538,	1.154,	7.93},
			[9] = 	{2.538,	1.154,	-7.93},
			[10] = 	{-0.868,	0.546,	14.527},
			[11] = 	{-0.868,	0.546,	-14.527},
		}, -- end of fires_pos
		chaff_flare_dispenser 	= {
			-- althought the index here starts from 1. When calling drop_flares or drop_chaff, the index begins from 0
			-- { dir =  {Z, Y, X}, pos =  {Z, Y, X}, }  -- Z=back/fwd,Y=down/up(+),X=left/right
			[1] = { dir =  {0, -0.7, 0.3}, pos =  {11.0, -3.80, 1.0225}, }, -- FWD_Left_Dispenser1
			[2] = { dir =  {0, -0.7, 0.3}, pos =  {11.01, -3.81, 1.0225}, }, -- FWD_Left_Dispenser2
			
			[3] = { dir =  {0, -0.7, -0.3}, pos =  {11.0, -3.80, -1.0225}, }, -- FWD_Right_Dispenser1
			[4] = { dir =  {0, -0.7, -0.3}, pos =  {11.01, -3.81, -1.0225}, }, -- FWD_Right_Dispenser2
			
			[5] = { dir =  {0, 0, 1}, pos =  {-1.01, -1.45, 2.2254}, }, -- MID_Left_Dispenser1
			[6] = { dir =  {0, 0, 1}, pos =  {-1.02, -1.46, 2.2254}, }, -- MID_Left_Dispenser2
			
			
			[9] = { dir =  {0, 0, -1}, pos =  {-1.01, -1.45, -2.2254}, }, -- MID_Right_Dispenser1
			[10] = { dir =  {0, 0, -1}, pos =  {-1.02, -1.46, -2.2254}, }, -- MID_Right_Dispenser2
			
			
			[13] = { dir =  {-0.1, -0.9, 0}, pos =  {-15.85, -0.66, 0}, }, -- TAIL_Dispenser1
			[14] = { dir =  {-0.1, -0.9, 0}, pos =  {-15.86, -0.67, 0}, }, -- TAIL_Dispenser2

			
		}, -- end of chaff_flare_dispenser

       -- Countermeasures
passivCounterm = {
CMDS_Edit = true,
SingleChargeTotal = 1680,
chaff = {default = 840, increment = 30, chargeSz = 1},
flare = {default = 840, increment = 30, chargeSz = 1}
 },	
	
        CanopyGeometry = {
            azimuth = {-145.0, 145.0},
            elevation = {-50.0, 90.0}
        },

Sensors = {
RADAR = "AN/APG-73",--63
RWR = "Abstract RWR"
},
Countermeasures = {
ECM = "AN/ALQ-165"
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},

	

Guns = {gun_mount("M_61", { count = 0 },{muzzle_pos = {5.00000, 0.250000, 0.000000}})--


},


Pylons =     {
	pylon(1, 2, 1.5000, 0.05000, 0.0000,
		{
			use_full_connector_position=true,DisplayName = _("PARAS"),
			
			
		},
		{
			{ CLSID	 		= "{3_C17_Supplies_parachute}"},    --Please  do not change or problem  
			{ CLSID	 		= "{1_C17_Supplies_parachute}"},    --Please  do not change or problem
			{ CLSID	 		= "{10_C17_Supplies_parachute}"},    --Please  do not change or problem 	       
			{ CLSID	 		= "{10_C17_parachutist}"},     --Please  do not change or problem   
			{ CLSID	 		= "{25_C17_parachutist}"},      --Please  do not change or problem		
			{ CLSID	 		= "{7_C17_parachutist}"},      --Please  do not change or problem	 
			{ CLSID	 		= "{1_C17_HUMVEE_PARACHUTE}"},    --Please  do not change or problem  
			 		  
		}
--
	),
					 
			 pylon(2, 2, -9.5000, 0.00000, 0.0000,
		{
			use_full_connector_position=true,DisplayName = _("CARGO1"),
		},
		{			 		   
			{ CLSID	 		= "{3_C17_Supplies_parachute}"},    --Please  do not change or problem  
			{ CLSID	 		= "{1_C17_Supplies_parachute}"},    --Please  do not change or problem
			{ CLSID	 		= "{10_C17_Supplies_parachute}"},    --Please  do not change or problem 	       
			{ CLSID	 		= "{10_C17_parachutist}"},     --Please  do not change or problem   
			{ CLSID	 		= "{25_C17_parachutist}"},      --Please  do not change or problem		
			{ CLSID	 		= "{7_C17_parachutist}"},      --Please  do not change or problem	 
			{ CLSID	 		= "{1_C17_HUMVEE_PARACHUTE}"},    --Please  do not change or problem  
					    
		}
--
	),
	
		pylon(3, 2, -9.5000, 0.00000, 0.0000,
		{
			use_full_connector_position=true,DisplayName = _("CARGO2"),
		},
		{			 		   
			{ CLSID	 		= "{3_C17_Supplies_parachute}"},    --Please  do not change or problem  
			{ CLSID	 		= "{1_C17_Supplies_parachute}"},    --Please  do not change or problem
			{ CLSID	 		= "{10_C17_Supplies_parachute}"},    --Please  do not change or problem 	       
			{ CLSID	 		= "{10_C17_parachutist}"},     --Please  do not change or problem   
			{ CLSID	 		= "{25_C17_parachutist}"},      --Please  do not change or problem		
			{ CLSID	 		= "{7_C17_parachutist}"},      --Please  do not change or problem	 
			{ CLSID	 		= "{1_C17_HUMVEE_PARACHUTE}"},    --Please  do not change or problem  						 
			{ CLSID	 		= "{C17_M1_Abrams_para}"},    --Please  do not change or problem 
			{ CLSID	 		= "{1_C17_HIMMARS_parachute}"},    --Please  do not change or problem			
		}
--
	),
	    pylon(4, 2, -7.5000, 0.05000, 0.0000,
	    {
		    use_full_connector_position=true,DisplayName = _("CARGO3"),
	    },
	    {			 	      
	      { CLSID	 		= "{3_C17_Supplies_parachute}"},    --Please  do not change or problem  
		  { CLSID	 		= "{1_C17_Supplies_parachute}"},    --Please  do not change or problem
		  { CLSID	 		= "{10_C17_Supplies_parachute}"},    --Please  do not change or problem 	       
	      { CLSID	 		= "{10_C17_parachutist}"},     --Please  do not change or problem   
		  { CLSID	 		= "{25_C17_parachutist}"},      --Please  do not change or problem		
		  { CLSID	 		= "{7_C17_parachutist}"},      --Please  do not change or problem	 
		  { CLSID	 		= "{1_C17_HUMVEE_PARACHUTE}"},    --Please  do not change or problem		  
		  { CLSID	 		= "{C17_M1_Abrams_para}"},    --Please  do not change or problem
		  { CLSID	 		= "{1_C17_HIMMARS_parachute}"},    --Please  do not change or problem	  
	    }
--
    ),
	    pylon(5, 2, 13.7558, -3.68130, 0.0000,
	    {
	    	use_full_connector_position=true,DisplayName = _("tgp"),
	    },
	    {			 
			{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",arg_increment = 1,connector = "disable"},-- ELINT
			{ CLSID = "{B1EF6B0E-3D91-4047-A7A5-A99E7D8B4A8B}",arg_value = 0.5,},-- Mercury LLTV Pod
  
	    }
--
    ),
							
	   },
	
	Tasks = {
        aircraft_task(Transport),
    },	
	DefaultTask = aircraft_task(Transport),

	SFM_Data = {    --C-17.
	aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.015,
			cx_flap	=	0.05,
			cy_flap	=	1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.023,	0.117,	0.064,	0,	0.5,	20,	1.4},
				[2] = 	{0.2,	0.023,	0.117,	0.064,	0,	1.5,	20,	1.4},
				[3] = 	{0.4,	0.023,	0.117,	0.064,	0,	2.5,	20,	1.4},
				[4] = 	{0.6,	0.025,	0.117,	0.064,	0.022,	3.5,	20,	1.4},
				[5] = 	{0.7,	0.03,	0.117,	0.083,	0.031,	3.5,	20,	1.2},
				[6] = 	{0.8,	0.032,	0.117,	0.107,	0.04,	3.5,	20,	1},
				[7] = 	{0.9,	0.045,	0.117,	0.148,	0.058,	3.5,	20,	0.8},
				[8] = 	{1,	0.054,	0.117,	0.199,	0.1,	3.5,	20,	0.7},
				[9] = 	{1.5,	0.054,	0.117,	0.199,	0.1,	3.5,	20,	0.2},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	9000,
			dpdh_f	=	9000,
			table_data = 
			{
				[1] = 	{0,	920000,	920000}, --373600
				[2] = 	{0.2,	770132,	770132}, --312756
				[3] = 	{0.4,	687034,	687034}, --279000
				[4] = 	{0.6,	618056,	618056}, --251000
				[5] = 	{0.7,	550070,	550070}, --253000
				[6] = 	{0.8,	489562,	489562}, --262000
				[7] = 	{0.9,	435710,	435710}, --274000
				[8] = 	{1,	387782,	387782}, --279000
				[9] = 	{1.1,	280000,	280000}, --280000
				[10] = 	{1.2,	266000,	266000}, --266000
				[11] = 	{1.3,	195001,	195001}, --95001
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},--NOSE_CENTER
	[1]  = {critical_damage = 3,  args = {296}},--NOSE_LEFT_SIDE
	[2]  = {critical_damage = 3,  args = {297}},--NOSE_RIGHT_SIDE
	[3]  = {critical_damage = 8, args = {65}},--CABINA / COCKPIT
	[4]  = {critical_damage = 2,  args = {298}},--CABIN_LEFT_SIDE
	[5]  = {critical_damage = 2,  args = {301}},--CABIN_RIGHT_SIDE
	[7]  = {critical_damage = 2,  args = {249}},--GUN
	[8]  = {critical_damage = 3,  args = {265}},--FRONT_GEAR_BOX
	[9]  = {critical_damage = 3,  args = {154}},--FUSELAGE_LEFT_SIDE
	[10] = {critical_damage = 3,  args = {153}},--MAIN / FUSELAGE_RIGHT_SIDE
	[11] = {critical_damage = 1,  args = {167}},--ENGINE_L
	[12] = {critical_damage = 1,  args = {161}},--ENGINE_R
	[13] = {critical_damage = 2,  args = {169}},--MTG_L_BOTTOM
	[14] = {critical_damage = 2,  args = {163}},--MTG_R_BOTTOM
	[15] = {critical_damage = 2,  args = {267}},--LEFT_GEAR_BOX
	[16] = {critical_damage = 2,  args = {266}},--RIGHT_GEAR_BOX
	[17] = {critical_damage = 2,  args = {168}},--ENGINE_L_OUT
	[18] = {critical_damage = 2,  args = {162}},--ENGINE_R_OUT
	[20] = {critical_damage = 2,  args = {183}},--AIR_BRAKE_R
	[23] = {critical_damage = 5, args = {223}},--WING_L_OUT
	[24] = {critical_damage = 5, args = {213}},--WING_R_OUT
	[25] = {critical_damage = 2,  args = {226}},--ELERON_L
	[26] = {critical_damage = 2,  args = {216}},--ELERON_R
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},--WING_L_CENTER
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},--WING_R_CENTER
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},--WING_L_IN
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}},--WING_R_IN
	[37] = {critical_damage = 2,  args = {228}},--FLAP_L_IN
	[38] = {critical_damage = 2,  args = {218}},--FLAP_R_IN
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--FIN_L_TOP
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--FIN_R_TOP 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},--FIN_L_BOTTOM
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--FIN_R_BOTTOM 
	[51] = {critical_damage = 2,  args = {240}},--ELEVATOR_L_IN
	[52] = {critical_damage = 2,  args = {238}},--ELEVATOR_R_IN
	[53] = {critical_damage = 2,  args = {248}},--RUDDER_L
	[54] = {critical_damage = 2,  args = {247}},--RUDDER_R
	[56] = {critical_damage = 2,  args = {158}},--TAIL_LEFT_SIDE
	[57] = {critical_damage = 2,  args = {157}},--TAIL_RIGHT_SIDE
	[59] = {critical_damage = 3,  args = {148}},--NOSE_BOTTOM
	[61] = {critical_damage = 2,  args = {147}},--FUEL_TANK_F
	[82] = {critical_damage = 2,  args = {152}},--FUSELAGE_BOTTOM
	[105] = {critical_damage = 2,  args = {603}},--ENGINE_3
	[106] = {critical_damage = 2,  args = {604}},--ENGINE_4
	},
	
	DamageParts = 
	{  
		[1] = "C17_Globemaster_III-oblomok-wing-r", -- wing R
		[2] = "C17_Globemaster_III-oblomok-wing-l", -- wing L
--		[3] = "kc-135-oblomok-noise", -- nose
--		[4] = "kc-135-oblomok-tail-r", -- tail
--		[5] = "kc-135-oblomok-tail-l", -- tail
	},
	
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

lights_data = 
{
	typename = "collection",
	lights = 
	{
		[1] = -- �X�g���{���C�g
		{
			typename = "collection",
			lights = 
			{
				-- Left Anticollision Light
				{typename = "natostrobelight",
				connector = "WHITE_BEACON L",
				position  = {-9.862, 0.038, -25.727},
				color = {1.0, 1.0, 1.0},
				argument_1 = 195,
				period = 1.2,
				phase_shift = 0,
				intensity_max = 35
				},
				{typename = "natostrobelight",
				connector = "WHITE_BEACON L2",
				position  = {-6.312, 0.038, -25.627},
				color = {1.0, 1.0, 1.0},
				argument_1 = 195,
				period = 1.2,
				phase_shift = 0,
				intensity_max = 35
				},
				-- Right Anticollision Light
				{typename = "natostrobelight",
				connector = "WHITE_BEACON R",
				position  = {-9.862, 0.038, 25.727},
				color = {1.0, 1.0, 1.0},
				argument_1 = 195,
				period = 1.2,
				phase_shift = 0,
				intensity_max = 35
				},
				{typename = "natostrobelight",
				connector = "WHITE_BEACON R2",
				position  = {-6.312, 0.038, 25.627},
				color = {1.0, 1.0, 1.0},
				argument_1 = 195,
				period = 1.2,
				phase_shift = 0,
				intensity_max = 35
				},
				-- Left Anticollision Light
				{typename = "natostrobelight",
				connector = "RED_BEACON tail",
				position  = {-26.175, 13.158, 0.000},
				color = {1.0, 0.0, 0.0},
				argument_1 = 195,
				period = 1.3,
				phase_shift = 0,
				intensity_max = 35
				},
				-- Right Anticollision Light
				{typename = "natostrobelight",
				connector = "RED_BEACON below",
				position  = {8.367, -3.722, 0.000},
				color = {1.0, 0.0, 0.0},
				argument_1 = 195,
				period = 1.3,
				phase_shift = 0,
				intensity_max = 35
				},
								
				
			}
		},
		[2] = -- �����f�B���O���C�g
		{
			typename = "collection",
			lights =
			{
				-- Landing/Taxi light
				{
				typename = "spotlight",
				connector = "MAIN_SPOT_PTR_01",
				position  = {-6.911, 0.000 , 25.150},
				color = {1.0, 1.0, 1.0},
				argument = 208,
				dir_correction = {elevation = math.rad(110.0)}
				},
				{
					typename = "spotlight",
					connector = "MAIN_SPOT_PTL_01",
					position  = {-6.911, 0.000, -25.150},
					color = {1.0, 1.0, 1.0},
					argument = 208,
					dir_correction = {elevation = math.rad(110.0)}
				},				
				{
					typename = "spotlight",
					connector = "RESERV_SPOT_PTL",
					position  = {10.869, -1.165, -3.500},
					color = {1.0, 1.0, 1.0},
					argument = 208,
					dir_correction = {elevation = math.rad(110.0)}
				},
				{
					typename = "spotlight",
					connector = "RESERV_SPOT_PTR",
					position  = {10.869, -1.165, 3.500},
					color = {1.0, 1.0, 1.0},
					argument = 208,
					dir_correction = {elevation = math.rad(110.0)}
				},
			}
		},
		[3]	= -- �i�r�Q�[�V�������C�g
		{
			typename = "collection",
			lights =
			{
				-- Left Position Light (red)
				{typename = "omnilight",
				connector = "BANO_1",
				color = {1.0, 0.0, 0.0},
				position  = {-6.461, 0.232, -25.608},
				argument  = 190
				},
				-- Right Position Light (green)
				{typename = "omnilight",
				connector = "BANO_2",
				color = {0, 0.26, 0.18},
				position  = {-6.461, 0.232, 25.608},
				argument  = 191
				},
				-- Tail Position Light (white)
				{typename = "omnilight",
				connector = "BANO_0_BACK",
				color = {1, 1, 1},
				position  = {-26.184, 13.150, 0.000},
				argument  = 203
				},
				-- CARGO Light (white)
				{typename = "omnilight",
				connector = "BANO_0_FRONT",
				color = {1, 1, 1},
				position  = {13.590, 2.300, 0.000},
				argument  = 203
				},
				{typename = "omnilight",
				connector = "BANO_0_CARGO_DOOR",
				color = {1, 1, 1},
				position  = {-9.147, 2.340, 0.000},
				argument  = 203
				},
				{typename = "omnilight",
				connector = "BANO_0_CARGO_CENTER",
				color = {1, 1, 1},
				position  = {3.097, 2.330, 0.000},
				argument  = 203
				},
			}
		},
		[4] = -- �t�H�[���[�V�������C�g
		{
			typename = "collection",
			lights = 
			{
				-- �я�̃t�H�[���[�V�������C�g
				{typename  = "argumentlight", argument = 200}
			}
		},
		[5]	=
		{
		},
		
	}
},  -- end of lights_data
}

add_aircraft(C17_Globemaster_III)

