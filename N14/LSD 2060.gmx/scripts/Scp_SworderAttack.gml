///Scp_EnemyAttack(HitBox_Sprite);
if(attack){
    with(instance_create(x,y,Obj_EnemyHitBox)){
        sprite_index = argument0;
        image_xscale = other.image_xscale;
    }
}
