

function form_bomb(name, user_name, model, level3, scheme, data, targeting_data, class_name, wstype_name)
	local wstype_name = wstype_name
	if  wstype_name == nil then
		wstype_name = _G[name]
	end
	
    local res = dbtype(class_name or "wAmmunition", 
    {
        ws_type = {wsType_Weapon,wsType_Bomb, level3, wstype_name},    
        model   = model,
    })
   
    data.fm.wind_time = 1000;
	
	data.fm.I = data.fm.I or calcIyz(data.fm.mass, data.fm.L, 0)
	data.fm.Ma = data.fm.Ma or calcMa(data.fm.I, data.fm.L, calcS(data.fm.caliber), 400)
	data.fm.Mw = data.fm.Mw or calcMw(data.fm.I, data.fm.L, calcS(data.fm.caliber))
	if data.warhead ~= nil then
		data.warhead.caliber = data.fm.caliber * 1000 --mm
	end
	
    if data.launcher ~= nil then
	    if data.launcher.ammunition_name ~= nil then
		   data.launcher.ammunition = weapons_table.weapons.bombs[data.launcher.ammunition_name]
		end 
	end
	
	-- Arming vane activated by incoming air mass. Disabled by default.
	if data.arming_vane == nil then
		data.arming_vane = {enabled = false, velK = 1}
	end
	
	-- Arming delay timer. Enabled by default.
	if data.arming_delay == nil then
		data.arming_delay = {enabled = true, delay_time = 0.8}
	end
		
    res.server = {}
    res.client = {}
    
    copy_recursive_with_metatables(res.server, data)
    copy_recursive_with_metatables(res.client, data)
	
	res.server.scheme = "schemes/bombs/"..scheme..".sch"
    res.client.scheme = "schemes/bombs/"..scheme..".sch"
	
    if data.warhead ~= nil then 
        res.server.warhead.fantom = 0
        res.client.warhead.fantom = 1
    end
    
	if data.launcher ~= nil then
        res.server.launcher.server = 1
        res.client.launcher.server = 0
    end

    res.mass 		   = data.fm.mass
    res.name 		   = name
	res.display_name   = user_name
    res.type_name      = "bomb"
	res.targeting_data = targeting_data

	if not res.sounderName then 
		res.sounderName = "Weapons/Bomb"
	end
    return res;
end

function declare_bomb(name, user_name, model, level3, scheme, data, targeting_data, class_name, wstype_name)
	
	local res = form_bomb(name, user_name, model, level3, scheme, data, targeting_data, class_name, wstype_name)
	
	weapons_table.weapons.bombs[res.name] = res
    register_targeting_data(res.name, res.ws_type,res.targeting_data);
    
    return res;
end

function register_targeting_data(name, wstype, targeting_data)
    local res = dbtype("wBombSightData", 
    {
        ws_type = wstype;
    });
    
    copy_recursive(res, targeting_data);
    
    weapons_table.weapons.bombs.targeting[name] = res;
end


function declare_cluster(name, level3, data)
    local res = cluster_desc(name, level3, data)    
	
    weapons_table.weapons.bombs[name] = res
    
    return res;
end















C17_HIMMARS_parachute =
{
	category  		= CAT_BOMBS,
	name      		= "C17_HIMMARS_parachute",
	model     		= "C17_HIMMARS_parachute",
	user_name 		= _("C17_HIMMARS_parachute"),
	wsTypeOfWeapon  = {wsType_Weapon, wsType_Bomb, wsType_Bomb_Lighter, WSTYPE_PLACEHOLDER},
	scheme    		=  "bomb-light",
	class_name		= "wAmmunitionBallute",         --  "wAmmunition_viHeavyObject",
	  type    = 0,         --    2,
        mass    = 1100,
        hMin    = 50.0,
        hMax    = 7000.0,
        Cx      = 0.0001,
        VyHold  = -10.0,
        Ag      = -5.0,
       
	fm = {
            mass            = 15, --15
            caliber         = 0.2730000,
            cx_coeff        = {1.000000, 0.320000, 0.710000, 0.150000, 1.280000},
			cx_factor   	= 100,
            L               = 1.05,
            I               = 33.282267,
            Ma              = 2.746331,
            Mw              = 2.146083,
            wind_time       = 1000.000000,
            wind_sigma      = 50.000000,
    },
    
    
    light =
    {
	
        start_time  = 3600, --2
        duration    = 2, --300
        light_position = {0.7, 0, 0},
        light_color = {1, 1, 0.8},
        light_attenuation = 750.0,
        smoke_position = {-0.7, 0, 0},
        smoke_color = {0.952, 0.952, 0.952},
        smoke_transparency = 200.0/255.0,
        smoke_width = 2, --1
		
    },
    
    control = 
    {
        delay_par   = 1.5,
    },
	 --warhead = warheads("LUU_2B"),
	 
	 
   	shape_table_data =
	{
		{
			file     = "C17_HIMMARS_parachute",
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	targeting_data = 
	{	
    v0 = 100,
    data = 
    {
        {1.000000, 22.341401, 0.012462},
        {10.000000, 23.654340, 0.004693},
        {20.000000, 23.716158, 0.004518},
        {30.000000, 23.725884, 0.004449},
        {40.000000, 23.732343, 0.004403},
        {50.000000, 25.652849, 0.005138},
        {60.000000, 28.211796, -0.007471},
        {70.000000, 30.331842, -0.018103},
        {80.000000, 32.099833, -0.026828},
        {90.000000, 33.604543, -0.034071},
        {100.000000, 34.906022, -0.040211},
        {200.000000, 35.507192, -0.072484},
        {300.000000, 36.094889, -0.083853},
        {400.000000, 37.152369, -0.088149},
        {500.000000, 38.443189, -0.089688},
        {600.000000, 50.312083, -0.090209},
        {700.000000, 50.938257, -0.090435},
        {800.000000, 51.421467, -0.090658},
        {900.000000, 51.819370, -0.090982},
        {1000.000000, 52.166176, -0.091431},
        {1100.000000, 52.482557, -0.091997},
        {1200.000000, 52.781163, -0.092664},
        {1300.000000, 53.069819, -0.093412},
        {1400.000000, 53.353402, -0.094223},
        {1500.000000, 53.634970, -0.095085},
        {1600.000000, 53.916446, -0.095986},
        {1700.000000, 54.199051, -0.096918},
        {1800.000000, 54.483559, -0.097876},
        {1900.000000, 54.770471, -0.098855},
        {2000.000000, 55.060114, -0.099854},
        {3000.000000, 58.135449, -0.110652},
        {4000.000000, 61.578307, -0.122891},
        {5000.000000, 65.441641, -0.136735},
        {6000.000000, 69.785758, -0.152402},
        {7000.000000, 74.680457, -0.170127},
        {8000.000000, 80.206119, -0.190171},
        {9000.000000, 86.456436, -0.212829},
        {10000.000000, 93.539509, -0.164750},
 
		}    
	},
}
declare_weapon(C17_HIMMARS_parachute)

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{1_C17_HIMMARS_parachute}",
	attribute		= C17_HIMMARS_parachute.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= C17_HIMMARS_parachute.Cx,
	Picture			= "C17_HIMMARS_parachute.png",
	displayName		= _("1_C17_HIMMARS_parachute"),
	Weight			= 16250,
	Elements  		= {{ShapeName = C17_HIMMARS_parachute.model}},
})

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{2_C17_HIMMARS_parachute}",
	attribute		= C17_HIMMARS_parachute.wsTypeOfWeapon,
	Count 			= 2,
	Cx_pil			= C17_HIMMARS_parachute.Cx,
	Picture			= "C17_HIMMARS_parachute.png",
	displayName		= _("2_C17_HIMMARS_parachute"),
	Weight			= 32500,
	Elements  		= {{ShapeName = C17_HIMMARS_parachute.model}},
})


C17_parachutist =
{
	category  		= CAT_BOMBS,
	name      		= "C17_parachutist",
	model     		= "C17_parachutist",
	user_name 		= _("C17_parachutist"),
	wsTypeOfWeapon  = {wsType_Weapon, wsType_Bomb, wsType_Bomb_Lighter, WSTYPE_PLACEHOLDER},
	scheme    		=  "bomb-light",
	class_name		= "wAmmunitionBallute",         --  "wAmmunition_viHeavyObject",
	  type    = 1,         --    2,
        mass    = 1100,
        hMin    = 50.0,
        hMax    = 7000.0,
        Cx      = 0.0001,
        VyHold  = -10.0,
        Ag      = -5.0,
       
	fm = {
            mass            = 15, --15
            caliber         = 0.2730000,
            cx_coeff        = {1.000000, 0.320000, 0.710000, 0.150000, 1.280000},
			cx_factor   	= 100,
            L               = 1.05,
            I               = 33.282267,
            Ma              = 2.746331,
            Mw              = 2.146083,
            wind_time       = 1000.000000,
            wind_sigma      = 50.000000,
    },
    
    
    light =
    {
	
        start_time  = 3600, --2
        duration    = 2, --300
        light_position = {0.7, 0, 0},
        light_color = {1, 1, 0.8},
        light_attenuation = 750.0,
        smoke_position = {-0.7, 0, 0},
        smoke_color = {0.952, 0.952, 0.952},
        smoke_transparency = 200.0/255.0,
        smoke_width = 2, --1
		
    },
    
    control = 
    {
        delay_par   = 2.0,
    },
	 --warhead = warheads("LUU_2B"),
	 
	 
   	shape_table_data =
	{
		{
			file     = "C17_parachutist",
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	targeting_data = 
	{	
    v0 = 200,
    data = 
    {
        {1.000000, 22.341401, 0.012462},
        {10.000000, 23.654340, 0.004693},
        {20.000000, 23.716158, 0.004518},
        {30.000000, 23.725884, 0.004449},
        {40.000000, 23.732343, 0.004403},
        {50.000000, 25.652849, 0.005138},
        {60.000000, 28.211796, -0.007471},
        {70.000000, 30.331842, -0.018103},
        {80.000000, 32.099833, -0.026828},
        {90.000000, 33.604543, -0.034071},
        {100.000000, 34.906022, -0.040211},
        {200.000000, 42.507192, -0.072484},
        {300.000000, 46.094889, -0.083853},
        {400.000000, 48.152369, -0.088149},
        {500.000000, 49.443189, -0.089688},
        {600.000000, 50.312083, -0.090209},
        {700.000000, 50.938257, -0.090435},
        {800.000000, 51.421467, -0.090658},
        {900.000000, 51.819370, -0.090982},
        {1000.000000, 52.166176, -0.091431},
        {1100.000000, 52.482557, -0.091997},
        {1200.000000, 52.781163, -0.092664},
        {1300.000000, 53.069819, -0.093412},
        {1400.000000, 53.353402, -0.094223},
        {1500.000000, 53.634970, -0.095085},
        {1600.000000, 53.916446, -0.095986},
        {1700.000000, 54.199051, -0.096918},
        {1800.000000, 54.483559, -0.097876},
        {1900.000000, 54.770471, -0.098855},
        {2000.000000, 55.060114, -0.099854},
        {3000.000000, 58.135449, -0.110652},
        {4000.000000, 61.578307, -0.122891},
        {5000.000000, 65.441641, -0.136735},
        {6000.000000, 69.785758, -0.152402},
        {7000.000000, 74.680457, -0.170127},
        {8000.000000, 80.206119, -0.190171},
        {9000.000000, 86.456436, -0.212829},
        {10000.000000, 93.539509, -0.164750},
 
		}    
	},
}
declare_weapon(C17_parachutist)

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{10_C17_parachutist}",
	attribute		= C17_parachutist.wsTypeOfWeapon,
	Count 			= 10,
	Cx_pil			= C17_parachutist.Cx,
	Picture			= "C17_parachutist.png",
	displayName		= _("10 C17_parachutist"),
	Weight			= 1500,
	Elements  		= {{ShapeName = C17_parachutist.model}},
})
declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{25_C17_parachutist}",
	attribute		= C17_parachutist.wsTypeOfWeapon,
	Count 			= 25,
	Cx_pil			= C17_parachutist.Cx,
	Picture			= "C17_parachutist.png",
	displayName		=_("25 C17_parachutist"),
	Weight			= 3750,
	Elements  		= {{ShapeName = C17_parachutist.model}},
})
declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{7_C17_parachutist}",
	attribute		= C17_parachutist.wsTypeOfWeapon,
	Count 			= 7,
	Cx_pil			= C17_parachutist.Cx,
	Picture			= "C17_parachutist.png",
	displayName		=_("7 C17_parachutist"),
	Weight			= 1050,
	Elements  		= {{ShapeName = C17_parachutist.model}},
})

C17_Supplies_parachute =
{
	category  		= CAT_BOMBS,
	name      		= "C17_Supplies_parachute",
	model     		= "C17_Supplies_parachute",
	user_name 		= _("C17_Supplies_parachute"),
	wsTypeOfWeapon  = {wsType_Weapon, wsType_Bomb, wsType_Bomb_Lighter, WSTYPE_PLACEHOLDER},
	scheme    		=  "bomb-light",
	class_name		= "wAmmunitionBallute",         --  "wAmmunition_viHeavyObject",
	  type    = 0,         --    2,
        mass    = 1100,
        hMin    = 50.0,
        hMax    = 7000.0,
        Cx      = 0.0001,
        VyHold  = -10.0,
        Ag      = -5.0,
       
	fm = {
            mass            = 15, --15
            caliber         = 0.2730000,
            cx_coeff        = {1.000000, 0.320000, 0.710000, 0.150000, 1.280000},
			cx_factor   	= 100,
            L               = 1.05,
            I               = 33.282267,
            Ma              = 2.746331,
            Mw              = 2.146083,
            wind_time       = 1000.000000,
            wind_sigma      = 50.000000,
    },
    
    
    light =
    {
	
        start_time  = 3600, --2
        duration    = 2, --300
        light_position = {0.7, 0, 0},
        light_color = {1, 1, 0.8},
        light_attenuation = 750.0,
        smoke_position = {-0.7, 0, 0},
        smoke_color = {0.952, 0.952, 0.952},
        smoke_transparency = 200.0/255.0,
        smoke_width = 2, --1
		
    },
    
    control = 
    {
        delay_par   = 2.0,
    },
	 --warhead = warheads("LUU_2B"),
	 
	 
   	shape_table_data =
	{
		{
			file     = "C17_Supplies_parachute",
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	targeting_data = 
	{	
    v0 = 200,
    data = 
    {
        {1.000000, 22.341401, 0.012462},
        {10.000000, 23.654340, 0.004693},
        {20.000000, 23.716158, 0.004518},
        {30.000000, 23.725884, 0.004449},
        {40.000000, 23.732343, 0.004403},
        {50.000000, 25.652849, 0.005138},
        {60.000000, 28.211796, -0.007471},
        {70.000000, 30.331842, -0.018103},
        {80.000000, 32.099833, -0.026828},
        {90.000000, 33.604543, -0.034071},
        {100.000000, 34.906022, -0.040211},
        {200.000000, 42.507192, -0.072484},
        {300.000000, 46.094889, -0.083853},
        {400.000000, 48.152369, -0.088149},
        {500.000000, 49.443189, -0.089688},
        {600.000000, 50.312083, -0.090209},
        {700.000000, 50.938257, -0.090435},
        {800.000000, 51.421467, -0.090658},
        {900.000000, 51.819370, -0.090982},
        {1000.000000, 52.166176, -0.091431},
        {1100.000000, 52.482557, -0.091997},
        {1200.000000, 52.781163, -0.092664},
        {1300.000000, 53.069819, -0.093412},
        {1400.000000, 53.353402, -0.094223},
        {1500.000000, 53.634970, -0.095085},
        {1600.000000, 53.916446, -0.095986},
        {1700.000000, 54.199051, -0.096918},
        {1800.000000, 54.483559, -0.097876},
        {1900.000000, 54.770471, -0.098855},
        {2000.000000, 55.060114, -0.099854},
        {3000.000000, 58.135449, -0.110652},
        {4000.000000, 61.578307, -0.122891},
        {5000.000000, 65.441641, -0.136735},
        {6000.000000, 69.785758, -0.152402},
        {7000.000000, 74.680457, -0.170127},
        {8000.000000, 80.206119, -0.190171},
        {9000.000000, 86.456436, -0.212829},
        {10000.000000, 93.539509, -0.164750},
 
		}    
	},
}
declare_weapon(C17_Supplies_parachute)

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{3_C17_Supplies_parachute}",
	attribute		= C17_Supplies_parachute.wsTypeOfWeapon,
	Count 			= 3,
	Cx_pil			= C17_Supplies_parachute.Cx,
	Picture			= "C17_Supplies_parachute.png",
	displayName		= _("3 C17_Supplies_parachute"),
	Weight			= 5100,
	Elements  		= {{ShapeName = C17_Supplies_parachute.model}},
})
declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{1_C17_Supplies_parachute}",
	attribute		= C17_Supplies_parachute.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= C17_Supplies_parachute.Cx,
	Picture			= "C17_Supplies_parachute.png",
	displayName		=_("1 C17_Supplies_parachute"),
	Weight			= 2800,
	Elements  		= {{ShapeName = C17_Supplies_parachute.model}},
})
declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{10_C17_Supplies_parachute}",
	attribute		= C17_Supplies_parachute.wsTypeOfWeapon,
	Count 			= 10,
	Cx_pil			= C17_Supplies_parachute.Cx,
	Picture			= "C17_Supplies_parachute.png",
	displayName		=_("10 C17_Supplies_parachute"),
	Weight			= 10200,
	Elements  		= {{ShapeName = C17_Supplies_parachute.model}},
})

C17_HUMVEE_PARACHUTE =
{
	category  		= CAT_BOMBS,
	name      		= "C17_HUMVEE_PARACHUTE",
	model     		= "C17_HUMVEE_PARACHUTE",
	user_name 		= _("C17_HUMVEE_PARACHUTE"),
	wsTypeOfWeapon  = {wsType_Weapon, wsType_Bomb, wsType_Bomb_Lighter, WSTYPE_PLACEHOLDER},
	scheme    		=  "bomb-light",
	class_name		= "wAmmunitionBallute",         --  "wAmmunition_viHeavyObject",
	  type    = 0,         --    2,
        mass    = 1100,
        hMin    = 50.0,
        hMax    = 7000.0,
        Cx      = 0.0001,
        VyHold  = -10.0,
        Ag      = -5.0,
       
	fm = {
            mass            = 15, --15
            caliber         = 0.2730000,
            cx_coeff        = {1.000000, 0.320000, 0.710000, 0.150000, 1.280000},
			cx_factor   	= 100,
            L               = 1.05,
            I               = 33.282267,
            Ma              = 2.746331,
            Mw              = 2.146083,
            wind_time       = 1000.000000,
            wind_sigma      = 50.000000,
    },
    
    
    light =
    {
	
        start_time  = 3600, --2
        duration    = 2, --300
        light_position = {0.7, 0, 0},
        light_color = {1, 1, 0.8},
        light_attenuation = 750.0,
        smoke_position = {-0.7, 0, 0},
        smoke_color = {0.952, 0.952, 0.952},
        smoke_transparency = 200.0/255.0,
        smoke_width = 2, --1
		
    },
    
    control = 
    {
        delay_par   = 2.0,
    },
	 --warhead = warheads("LUU_2B"),
	 
	 
   	shape_table_data =
	{
		{
			file     = "C17_HUMVEE_PARACHUTE",
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	targeting_data = 
	{	
    v0 = 200,
    data = 
    {
        {1.000000, 22.341401, 0.012462},
        {10.000000, 23.654340, 0.004693},
        {20.000000, 23.716158, 0.004518},
        {30.000000, 23.725884, 0.004449},
        {40.000000, 23.732343, 0.004403},
        {50.000000, 25.652849, 0.005138},
        {60.000000, 28.211796, -0.007471},
        {70.000000, 30.331842, -0.018103},
        {80.000000, 32.099833, -0.026828},
        {90.000000, 33.604543, -0.034071},
        {100.000000, 34.906022, -0.040211},
        {200.000000, 42.507192, -0.072484},
        {300.000000, 46.094889, -0.083853},
        {400.000000, 48.152369, -0.088149},
        {500.000000, 49.443189, -0.089688},
        {600.000000, 50.312083, -0.090209},
        {700.000000, 50.938257, -0.090435},
        {800.000000, 51.421467, -0.090658},
        {900.000000, 51.819370, -0.090982},
        {1000.000000, 52.166176, -0.091431},
        {1100.000000, 52.482557, -0.091997},
        {1200.000000, 52.781163, -0.092664},
        {1300.000000, 53.069819, -0.093412},
        {1400.000000, 53.353402, -0.094223},
        {1500.000000, 53.634970, -0.095085},
        {1600.000000, 53.916446, -0.095986},
        {1700.000000, 54.199051, -0.096918},
        {1800.000000, 54.483559, -0.097876},
        {1900.000000, 54.770471, -0.098855},
        {2000.000000, 55.060114, -0.099854},
        {3000.000000, 58.135449, -0.110652},
        {4000.000000, 61.578307, -0.122891},
        {5000.000000, 65.441641, -0.136735},
        {6000.000000, 69.785758, -0.152402},
        {7000.000000, 74.680457, -0.170127},
        {8000.000000, 80.206119, -0.190171},
        {9000.000000, 86.456436, -0.212829},
        {10000.000000, 93.539509, -0.164750},
 
		}    
	},
}
declare_weapon(C17_HUMVEE_PARACHUTE)

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{2_C17_HUMVEE_PARACHUTE}",
	attribute		= C17_HUMVEE_PARACHUTE.wsTypeOfWeapon,
	Count 			= 2,
	Cx_pil			= C17_HUMVEE_PARACHUTE.Cx,
	Picture			= "C17_HUMVEE_PARACHUTE.png",
	displayName		= _("2 C17_HUMVEE_PARACHUTE"),
	Weight			= 5100,
	Elements  		= {{ShapeName = C17_HUMVEE_PARACHUTE.model}},
})
declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{1_C17_HUMVEE_PARACHUTE}",
	attribute		= C17_HUMVEE_PARACHUTE.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= C17_HUMVEE_PARACHUTE.Cx,
	Picture			= "C17_HUMVEE_PARACHUTE.png",
	displayName		=_("1 C17_HUMVEE_PARACHUTE"),
	Weight			= 2800,
	Elements  		= {{ShapeName = C17_HUMVEE_PARACHUTE.model}},
})
declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{4_C17_HUMVEE_PARACHUTE}",
	attribute		= C17_HUMVEE_PARACHUTE.wsTypeOfWeapon,
	Count 			= 4,
	Cx_pil			= C17_HUMVEE_PARACHUTE.Cx,
	Picture			= "C17_HUMVEE_PARACHUTE.png",
	displayName		=_("4 C17_HUMVEE_PARACHUTE"),
	Weight			= 10200,
	Elements  		= {{ShapeName = C17_HUMVEE_PARACHUTE.model}},
})





C17_M1_Abrams_para =
{
	category  		= CAT_BOMBS,
	name      		= "C17_M1_Abrams_para",
	model     		= "C17_M1_Abrams_para",
	user_name 		= _("C17_M1_Abrams_para"),
	wsTypeOfWeapon  = {wsType_Weapon, wsType_Bomb, wsType_Bomb_Lighter, WSTYPE_PLACEHOLDER},
	scheme    		=  "bomb-light",
	class_name		= "wAmmunitionBallute",         --  "wAmmunition_viHeavyObject",
	  type    = 0,         --    2,
        mass    = 30,
        hMin    = 400.0,
        hMax    = 7000.0,
        Cx      = 0.0001,
        VyHold  = -10.0,
        Ag      = -5.0,
       
	fm = {
            mass            = 15, --15
            caliber         = 0.2730000,
            cx_coeff        = {1.000000, 0.320000, 0.710000, 0.150000, 1.280000},
			cx_factor   	= 100,
            L               = 1.05,
            I               = 33.282267,
            Ma              = 2.746331,
            Mw              = 2.146083,
            wind_time       = 1000.000000,
            wind_sigma      = 50.000000,
    },
    
    
    light =
    {
	
        start_time  = 3600, --2
        duration    = 2, --300
        light_position = {0.7, 0, 0},
        light_color = {1, 1, 0.8},
        light_attenuation = 750.0,
        smoke_position = {-0.7, 0, 0},
        smoke_color = {0.952, 0.952, 0.952},
        smoke_transparency = 200.0/255.0,
        smoke_width = 2, --1
		
    },
    
    control = 
    {
        delay_par   = 2.5,
    },
	 --warhead = warheads("LUU_2B"),
	 
	 
   	shape_table_data =
	{
		{
			file     = "C17_M1_Abrams_para",
			index    = WSTYPE_PLACEHOLDER,
		},
	},
	targeting_data = 
	{	
    v0 = 200,
    data = 
    {
        {1.000000, 22.341401, 0.012462},
        {10.000000, 23.654340, 0.004693},
        {20.000000, 23.716158, 0.004518},
        {30.000000, 23.725884, 0.004449},
        {40.000000, 23.732343, 0.004403},
        {50.000000, 25.652849, 0.005138},
        {60.000000, 28.211796, -0.007471},
        {70.000000, 30.331842, -0.018103},
        {80.000000, 32.099833, -0.026828},
        {90.000000, 33.604543, -0.034071},
        {100.000000, 34.906022, -0.040211},
        {200.000000, 42.507192, -0.072484},
        {300.000000, 46.094889, -0.083853},
        {400.000000, 48.152369, -0.088149},
        {500.000000, 49.443189, -0.089688},
        {600.000000, 50.312083, -0.090209},
        {700.000000, 50.938257, -0.090435},
        {800.000000, 51.421467, -0.090658},
        {900.000000, 51.819370, -0.090982},
        {1000.000000, 52.166176, -0.091431},
        {1100.000000, 52.482557, -0.091997},
        {1200.000000, 52.781163, -0.092664},
        {1300.000000, 53.069819, -0.093412},
        {1400.000000, 53.353402, -0.094223},
        {1500.000000, 53.634970, -0.095085},
        {1600.000000, 53.916446, -0.095986},
        {1700.000000, 54.199051, -0.096918},
        {1800.000000, 54.483559, -0.097876},
        {1900.000000, 54.770471, -0.098855},
        {2000.000000, 55.060114, -0.099854},
        {3000.000000, 58.135449, -0.110652},
        {4000.000000, 61.578307, -0.122891},
        {5000.000000, 65.441641, -0.136735},
        {6000.000000, 69.785758, -0.152402},
        {7000.000000, 74.680457, -0.170127},
        {8000.000000, 80.206119, -0.190171},
        {9000.000000, 86.456436, -0.212829},
        {10000.000000, 93.539509, -0.164750},
 
		}    
	},
}
declare_weapon(C17_M1_Abrams_para)

declare_loadout({
	category 		= CAT_BOMBS,
	CLSID	 		= "{C17_M1_Abrams_para}",
	attribute		= C17_M1_Abrams_para.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= C17_M1_Abrams_para.Cx,
	Picture			= "C17_M1_Abrams_para.png",
	displayName		= _("1 C17_M1_Abrams_para"),
	Weight			= 62100,
	Elements  		= {{ShapeName = C17_M1_Abrams_para.model}},
})




