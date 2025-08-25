//=======================================================
//============== CONVERT ORIGIN TO ANGLES ===============
//FORKED FROM https://github.com/samisalreadytaken/vs_library/blob/master/src/vs_math.nut
//=======================================================
RAD2DEG <- 57.29577951;
PI <- 3.141592654;
function GetAngle( vFrom, vTo )
{
	local d     = vFrom - vTo;
	local pitch = RAD2DEG*atan2( d.z, d.Length2D() );
	local yaw   = RAD2DEG*(atan2( d.y, d.x ) + PI);

	return Vector(pitch,yaw,0.0);
}
//=======================================================
function Spawn(){
    local pl = null;
    while((pl = Entities.FindByClassname(pl, "player")) != null){
        if(!(pl.GetHealth() > 1))continue;
        local VecAngle = GetAngle(pl.GetOrigin(), self.GetOrigin())
        printl(VecAngle)
        self.SetAngles(VecAngle.x,VecAngle.y,VecAngle.z)
        self.SpawnEntity()
    }
}
