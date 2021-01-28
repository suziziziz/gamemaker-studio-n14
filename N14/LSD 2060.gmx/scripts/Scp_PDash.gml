if (PUDash){
    flashAlpha = 1;
    vsp = 0;
    var dashSp = 20;
    hsp = image_xscale*dashSp;
    instance_create(x,y,Obj_PRail);
    if(PUDashTime > 0){PUDashTime -= 1;}
    if(PUDashTime <= 0){PUDash = false;}
    if(place_meeting(x+image_xscale,y,Obj_Floor)){
        PUDash = false;
        if(sound_isplaying(Snd_SFXHitWall)){sound_stop(Snd_SFXHitWall);}
        audio_play_sound(Snd_SFXHitWall,0,0);
        Obj_Camera.HIT = 10;
        vsp = 0;
        vsp -= 5;
    }
}
