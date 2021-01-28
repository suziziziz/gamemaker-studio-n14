if(attack){
    sprite_index = Spr_PIdle;
    image_speed = 0;
    image_index = 0;
    if(!instance_exists(Obj_PHitBox)){
        with(instance_create(x+image_xscale*10,y,Obj_PHitBox)){
            //=====SWORD=====//
                if(other.sword = 1){HIT = 1; audio_play_sound(Snd_SFXSword,0,0); sprite_index = Spr_Sw1Attack;}//====SWORD1====//
                if(other.sword = 2){HIT = 3; audio_play_sound(Snd_SFXSword,0,0); sprite_index = Spr_Sw2Attack;}//====SWORD2====//
                if(other.sword = 3){HIT = 5; audio_play_sound(Snd_SFXSword,0,0); sprite_index = Spr_Sw3Attack;}//====SWORD3====//
                if(other.sword = 4){    //====SWORD4====//
                    HIT = 20;
                    sprite_index = Spr_Sw4Attack;
                    with(other){
                        if(place_meeting(x,y+1,Obj_Floor)){
                            vsp = 0;
                            vsp -= jumpsp/1.5;
                            Scp_Freeze(150);
                                Obj_Camera.x += (random_range(-10,10));
                                Obj_Camera.y += (random_range(-10,10));
                            audio_play_sound(Snd_SFXEnemySwordFloor,1,0);
                        }else{
                            audio_play_sound(Snd_SFXSword,0,0);
                        }
                    }
                }   //====SWORD4====//
            //=====OTHERS=====//
                image_xscale = other.image_xscale;
                image_blend = c_red;
                if(place_meeting(x,y,Obj_Floor)) or (place_meeting(x,y,Obj_EnemyParent)){
                    other.hsp = 0;
                    other.hsp -= other.image_xscale*2;
                    //===HITS===//
                        with(instance_place(x,y,Obj_EnemyParent)){audio_play_sound(Snd_SFXEnemyHit,0,0); flashAlpha = 1; Scp_Freeze(150); life-= other.HIT;}//Enemy
                        with(instance_place(x,y,Obj_Floor)){audio_play_sound(Snd_SFXHitSwordOnFloor,0,0); Scp_Freeze(100);}//Wall
                }else{
                    with(other){
                        if(place_meeting(x,y+1,Obj_Floor)){hsp = 0;}
                    }
                }
        }
    }
    if(attackDelay > 0){attackDelay -= 1;}
    if(attackDelay <= 0){
        if(instance_exists(Obj_PHitBox)){
            with(Obj_PHitBox){
                instance_destroy();
            }
        }
        if(place_meeting(x,y+1,Obj_Floor)){hsp = 0;}
        attack = false;
    }
}
