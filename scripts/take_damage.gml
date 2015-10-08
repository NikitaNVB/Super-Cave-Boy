///take_damage();
// Take damage
    if (state != hurt_state) {
    
        audio_emitter_pitch(audio_em, 1.6);
        audio_emitter_gain(audio_em, 1.4);
        audio_play_sound_on(audio_em, snd_ouch, false, 8);    
    
        image_blend = make_colour_rgb(220, 150, 150);
        V_SPEED = -8;
        H_SPEED = (sign(x-other.x)*4);
        
    // Invincible for 2 seconds
    alarm[0] = room_speed*2;
    alarm[1] = 1;
    INVINCIBLE=1;
        
        state = hurt_state;
        
        scr_move(obj_solid);
        
        
        if (instance_exists(PlayerStats)) {
            PlayerStats.hp -= 1;
        }
    }
