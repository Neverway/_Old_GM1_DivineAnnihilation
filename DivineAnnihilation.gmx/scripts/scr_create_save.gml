// Set player name
global.name = "FOX"

// Set hp
global.hp = 99;

// Set room x/y
global.savedx = 0;
global.savedy = 0;

// Set party
global.partyMember1Following = false;
global.partyMember2Following = false;

// Set gold
global.gold = 0;

// Set level
global.level = 0;

// Set inventory
global.inve1 = "---";
global.inve2 = "---";
global.inve3 = "---";
global.inve4 = "---";
global.inve5 = "---";

// Set weapons
global.wepo1 = "---";
global.wepo2 = "---";
global.wepo3 = "---";
global.wepo4 = "---";
global.wepo5 = "---";

// Selected save profile
if argument0 = "profile1"
{
    ini_open("profile1.sav");
}
if argument0 = "profile2"
{
    ini_open("profile2.sav");
}
if argument0 = "profile3"
{
    ini_open("profile3.sav");
}
if argument0 = "profile4"
{
    ini_open("profile4.sav");
}

show_debug_message("Created save on: ")
show_debug_message(string(argument0))

// Save player name
ini_write_string(argument0,"name",global.name);

// Save hp
ini_write_real(argument0,"health",global.hp);

// Save room x/y
ini_write_real(argument0,"savedx",global.savedx);
ini_write_real(argument0,"savedy",global.savedy);

// Save room
var SavedRoom = 4;
ini_write_real(argument0,"room",SavedRoom);

// Save party
ini_write_real(argument0,"partymember1",global.partyMember1Following);
ini_write_real(argument0,"partymember2",global.partyMember2Following);

// Save gold
ini_write_real(argument0,"gold",global.gold);

// Save level
ini_write_real(argument0,"level",global.level);

// Save ineventory
ini_write_string(argument0,"inv1",global.inve1);
ini_write_string(argument0,"inv2",global.inve2);
ini_write_string(argument0,"inv3",global.inve3);
ini_write_string(argument0,"inv4",global.inve4);
ini_write_string(argument0,"inv5",global.inve5);

// Save weapons
ini_write_string(argument0,"wpn1",global.wepo1);
ini_write_string(argument0,"wpn2",global.wepo2);
ini_write_string(argument0,"wpn3",global.wepo3);
ini_write_string(argument0,"wpn4",global.wepo4);
ini_write_string(argument0,"wpn5",global.wepo5);

ini_close();
room_goto(3)
