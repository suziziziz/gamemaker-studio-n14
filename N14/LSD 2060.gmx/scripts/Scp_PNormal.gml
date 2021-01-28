//=======MOVEMENTS=======//
//Inputs
    Scp_Controls();
//Move
    move = keyD - keyA;
    hsp += move*sp;
    if(move != 0){
        if(hsp >= maxsp){hsp = maxsp;}
        if(hsp <= -maxsp){hsp = -maxsp;}
    }else{
        if (hsp > 0){hsp -= sp;}
        if (hsp < 0){hsp += sp;}
    }
//Jump
    if(place_meeting(x,y+1,Obj_Floor)){
        if(keyJp){
            vsp = 0;
            vsp -= jumpsp;
            audio_play_sound(Snd_SFXJump,0,0);
        }
    }else if(vsp < 0){
        if(keyJr){
            vsp = 0;
        }
    }
//AirJump
    if(!place_meeting(x,y+1,Obj_Floor)){
        if(keyJp) and (vsp >= -1){
            if(PUAirJump) and (PUAirJumpAct){
                vsp = 0;
                vsp -= jumpsp/1.2;
                audio_play_sound(Snd_SFXJump,0,0);
            }
            PUAirJump = false;
        }
    }else{
        PUAirJump = true;
    }
//Dash
    if(keyI) and (PUMana >= PUDashCost) and (PUDashAct){
        PUDash = true;
        PUDashTime = 5;
        PUMana = PUMana - PUDashCost;
        if(sound_isplaying(Snd_SFXDash)){sound_stop(Snd_SFXDash);}
        audio_play_sound(Snd_SFXDash,0,0);
    }
//Attack
    if(keyK) and (sword >= 1){
        attack = true;
        attackDelay = 10;
        if(vsp < 0){vsp = 0;}
    }
//=======ANIMATIONS=======//
    if(move != 0){image_xscale = move;}
    if(hsp != 0){
        if(place_meeting(x,y+1,Obj_Floor)){
            sprite_index = Spr_PWalk;
            image_speed = 0.3;
        }
    }else{
        if(place_meeting(x,y+1,Obj_Floor)){
            sprite_index = Spr_PIdle;
            image_speed = 0.1;
        }
    }
    if(!place_meeting(x,y+1,Obj_Floor)){
        sprite_index = Spr_PJump;
        image_speed = 0;
        if(vsp < -1)                    {image_index = 0;}
        if(vsp >= -1)and(vsp <= 1)      {image_index = 1;}
        if(vsp > 1)                     {image_index = 2;}
    }
