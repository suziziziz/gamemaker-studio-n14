if place_meeting(x,y,Obj_Floor)
{
    for(var i = 0; i < 1000; ++i)
    {
        //Right
        if (!place_meeting(x+i,y,Obj_Floor))
        {
            x+=i;
            break;
        }
        //Left
        if (!place_meeting(x-i,y,Obj_Floor))
        {
            x-=i;
            break;
        }
        //Up
        if (!place_meeting(x,y-i,Obj_Floor))
        {
            y-=i;
            break;
        }
        //Down
        if (!place_meeting(x,y+i,Obj_Floor))
        {
            y+=i;
            break;
        }
        //Up Right
        if (!place_meeting(x+i,y-i,Obj_Floor))
        {
            x+=i;
            y-=i;
            break;
        }
        //Up Left
        if (!place_meeting(x-i,y-i,Obj_Floor))
        {
            x-=i;
            y-=i;
            break;
        }
        //Down Right
        if (!place_meeting(x+i,y+i,Obj_Floor))
        {
            x+=i;
            y+=i;
            break;
        }
        //Down Left
        if (!place_meeting(x-i,y+i,Obj_Floor))
        {
            x-=i;
            y+=i;
            break;
        }
    }
}
