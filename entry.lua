self_ID = "C17_Globemaster_III"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("C17_Globemaster_III"),
developerName = _("Fercho1-1"),

fileMenuName = _("C17_Globemaster_III"),
update_id        = "C17_Globemaster_III",
version		 = "2.8",
state		 = "installed",
info		 = _("the McDonnell Douglas/Boeing C17_Globemaster_III is a large military transport aircraft THIS MOD IS MADE BY FERCHO 1-1."),

encyclopedia_path = current_mod_path..'/Encyclopedia',

Skins	=
	{
		{
		    name	= _("C17_Globemaster_III"),
			dir		= "Theme"
		},
	},	
Missions =
	{
		{
			name		    = _("C17_Globemaster_III"),
			dir			    = "Missions",
  		},
	},
		
LogBook =
	{
		{
			name		= _("C17_Globemaster_III"),
			type		= "C17_Globemaster_III",
		},
	},	
InputProfiles =
	{
		["C17_Globemaster_III"] = current_mod_path .. '/Input/C17_Globemaster_III',
	},	

})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")

--mount_vfs_sound_path (current_mod_path.."/Sounds")
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/C17_Globemaster_III.lua')
dofile(current_mod_path..'/MAMPilot.lua')
dofile(current_mod_path..'/Database/db_MAM_objects.lua')
dofile(current_mod_path..'/Weapons.lua')
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views_F15Pit.lua")
make_view_settings('C17_Globemaster_III', ViewSettings, SnapViews)
--make_flyable('C17_Globemaster_III',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old =54}, current_mod_path..'/comm.lua')--SFM
make_flyable('C17_Globemaster_III',current_mod_path..'/Cockpit/Scripts/',{nil, old = 6}, current_mod_path..'/comm.lua')--SFM
--make_flyable('C17_Globemaster_III',current_mod_path..'/Cockpit/KneeboardRight/',{nil, old = 6}, current_mod_path..'/comm.lua')--SFM
-------------------------------------------------------------------------------------
plugin_done()
