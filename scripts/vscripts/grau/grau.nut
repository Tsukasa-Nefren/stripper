::rtvNum <- 1;
rtvTable <- {
	stageName = ["rtv", "fys", "RNG"],
	musicName = ["Dizzolve", "Yooh Seraphim", "Vacuum Track"]
}
function setRtv(_angka)
{
	if(!(_angka < 4))
	{
		ScriptPrintMessageChatAll("There is an error in RTV system!");
		rtvNum = 1;
	}
	else
	{
		rtvNum = _angka;
	}
}

function startRtv()
{
	EntFire("world_text_credit_MUSIC1", "AddOutput", "message " + rtvTable.stageName[rtvNum - 1]);
	EntFire("world_text_credit_MUSIC2", "AddOutput", "message " + rtvTable.musicName[rtvNum - 1]);
	switch(::rtvNum)
	{
		case 1:
			rtvStart();
			break;
		case 2:
			fysStart();
			break;
		case 3:
			rngStart();
			break;
		default:
			ScriptPrintMessageChatAll("There is an error in RTV system");
			rtvStart();
			::rtvNum = 1;
			break;
	}
}

function rtvStart()
{
	EntFire("fys_trigger", "kill");
	EntFire("rtv_trigger", "enable");
	EntFire("rtv_trigger", "Trigger", "", 19);
	EntFire("relay_rtv_z_start_attack", "kill");
	EntFire("relay_rtv_fys_start_attack", "kill");
	EntFire("rng_start", "kill");
}

function fysStart()
{
	EntFire("fys_trigger", "enable")
	EntFire("fys_trigger", "Trigger", "", 19);
	EntFire("rtv_trigger", "kill");
	EntFire("relay_rtv_z_start_attack", "kill");
	EntFire("relay_rtv_fys_start_attack", "kill");
	EntFire("rng_start", "kill");
}

function rngStart()
{
	EntFire("fys_trigger", "kill");
	EntFire("rtv_trigger", "kill");
	EntFire("relay_rtv_z_start_attack", "kill");
	EntFire("relay_rtv_fys_start_attack", "kill");
	EntFire("rng_start", "Enable");
	EntFire("rng_start", "Trigger", "", 19);
	EntFireByHandle(self, "RunScriptCode", "whiteBall()", 0, null, null);
	EntFireByHandle(self, "RunScriptCode", "randSpeed2()", 0, null, null);
}

function st3_a8_case()
{
    local randInt = RandomInt(1, 4);
    EntFire("st3_boss_a8_temp", "ForceSpawn");
    switch(randInt)
    {
        case 1:
            EntFire("st3_boss_a8_rot*", "AddOutput", "MaxSpeed 50", 0.01);
            EntFire("st3_boss_a8_rot2", "SetSpeed", "-0.3", 0.05);
            EntFire("st3_boss_a8_rot1", "SetSpeed", "0.3", 0.05);
            EntFire("st3_boss_a8_rot1", "SetSpeed", "0.3", 2);
            EntFire("st3_boss_a8_rot2", "SetSpeed", "-0.3", 2);
            EntFire("st3_boss_a8_rot1", "SetSpeed", "1", 20.92);
			EntFire("randspeed_timer", "Enable", "", 20.92);
            break;
        case 2:
            EntFire("st3_boss_a8_rot*", "AddOutput", "MaxSpeed 50", 0.01);
            EntFire("st3_boss_a8_rot2", "SetSpeed", "0.3", 0.05);
            EntFire("st3_boss_a8_rot1", "SetSpeed", "-0.3", 0.05);
            EntFire("st3_boss_a8_rot1", "SetSpeed", "-0.3", 2);
            EntFire("st3_boss_a8_rot2", "SetSpeed", "0.3", 2);
            EntFire("st3_boss_a8_rot1", "SetSpeed", "-1", 20.92);
			EntFire("randspeed_timer2", "Enable", "", 20.92);
            break;
		case 3:
            EntFire("st3_boss_a8_rot*", "SetSpeed", "-1", 2);
			EntFire("st3_boss_a8_rot1", "SetSpeed", "-1", 20.92);
			EntFire("randspeed_timer2", "Enable", "", 20.92);
			EntFire("st3_boss_a1_timer", "RefireTime", "0.44",2);
			EntFire("st3_boss_a1_timer", "RefireTime", "0.11",20.92);
            break;
		case 4:
			EntFire("st3_boss_a8_rot1", "SetSpeed", "1", 20.92);
			EntFire("randspeed_timer", "Enable", "", 20.92);
			EntFire("st3_boss_a1_timer", "RefireTime", "0.44",2);
			EntFire("st3_boss_a1_timer", "RefireTime", "0.11",20.92);
            break;
    }
}

function asimotoMove()
{
	local delay = RandomFloat(0, 5.5);
	EntFire("asimoto_move_*", "Open", "", delay);
}

function Rainbow()
{
	EntFire("func_movelinear*","Color", GenerateColor(),0);
	EntFire("func_rotating*","Color", GenerateColor(),0);
	EntFire("Env_Beam*","AddOutput", "RenderColor " + GenerateColor(),0);
	EntFire("Env_Laser*","AddOutput", "RenderColor " + GenerateColor(),0);
}

function GenerateColor()
{
	local r = RandomInt(1,255);
	local g = RandomInt(1,255);
	local b = RandomInt(1,255);

	return r.tostring() + " " + g.tostring() + " " + b.tostring();
}

function randSpeed(_t1, _t2)
{
	local random = RandomFloat(_t1, _t2);
	EntFire("st3_boss_a8_rot1", "SetSpeed", random.tostring());
}

function whiteBall()
{
	EntFire("st3_boss_a1_center_ball_black*", "AddOutput", "StartColor 255 255 255", 0);
	EntFireByHandle(self, "RunScriptCode", "whiteBall()", 0.1, null, null);
}

function randSpeed2()
{
	local random = RandomInt(50, 150);
	EntFire("st3_boss_a3_move*", "SetSpeed", random.tostring());
	EntFireByHandle(self, "RunScriptCode", "randSpeed2()", 1, null, null);
}

function setHp()
{
	local random = RandomInt(230, 300);
	EntFireByHandle(activator, "AddOutput", "Health " + random.tostring(), 0, null, null);
}

function gearSpawn(_r1, _r2)
{
	local spawnLoc = null;
	if((spawnLoc = Entities.FindByName(spawnLoc, "l3_asiba")) != null)
	{
		local parentOrigin = spawnLoc.GetOrigin();
		local gear = null;
		if((gear = Entities.FindByName(gear, "st3_last_maker_gear" + generateRandom())) != null)
		{
			local randomizer = RandomInt(_r1, _r2);
			spawner(randomizer, gear, parentOrigin);
		}
	}
}

function spawner(randomizer, gear, parentOrigin)
{
	local gear2 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());
	local gear3 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());
	local gear4 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());
	local gear5 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());
	local gear6 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());
	local gear7 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());
	local gear8 = Entities.FindByName(null, "st3_last_maker_gear" + generateRandom());

	local gears = [gear, gear2, gear3, gear4, gear5, gear6, gear7, gear8];
	foreach(gir in gears)
	{
		gir.SpawnEntityAtLocation(parentOrigin + generateVector(), Vector(0, RandomInt(0, 360), 0));
		if(gir == gears[randomizer - 1]){break;}
	}
}

function generateRandom(n1 = 1, n2 = 8)
{
	local random = RandomInt(n1, n2);
	return random.tostring();
}

function generateVector()
{
	return Vector(RandomInt(-850, 850), RandomInt(-850, 850), 2500);
}