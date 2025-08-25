function OnPostSpawn(){
	local x = RandomInt(0,5);
	switch(x){
		case 4:
		EntFireByHandle(self, "SetSpeed", "1", 0, self, null);
		break;
		case 5:
		EntFireByHandle(self, "SetSpeed", "-1", 0, self, null);
		break;
	}
}