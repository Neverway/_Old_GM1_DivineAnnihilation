//==========================//
// Horizontal Collisions
//==========================//
repeat abs(vx)
{
    if(!place_meeting(x+sign(vx), y, obj_system_parent_solid)) 
    {
        x += sign(vx);
    }
    
    else
    {
        vx = 0;
    }
}
   

//==========================//
// Vertical Collisions
//==========================//
repeat(abs(vy))
{
    if(!place_meeting(x, y+sign(vy), obj_system_parent_solid))
    {
        y += sign(vy);
    }

    else
    {
        vy = 0;
    }
}

if global.meshingEnabled == true
{
    x += sign(vx);
    y += sign(vy);
}
