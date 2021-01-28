if(global.altKeys){
    keyD = keyboard_check(ord("D"));//KeyD
    keyA = keyboard_check(ord("A"));//KeyA
    keyI = keyboard_check_pressed(ord("I"));//KeyI
    keyK = keyboard_check_pressed(ord("K"));//KeyK
    keyJp = keyboard_check_pressed(ord("J"));//KeyJPressed
    keyJr = keyboard_check_released(ord("J"));//KeyJReleased
}else{
    keyD = keyboard_check(ord("D"));//KeyLeft
    keyA = keyboard_check(ord("A"));
    keyI = keyboard_check_pressed(vk_shift);
    keyK = mouse_check_button_pressed(mb_left);
    keyJp = keyboard_check_pressed(vk_space);
    keyJr = keyboard_check_released(vk_space);
}
