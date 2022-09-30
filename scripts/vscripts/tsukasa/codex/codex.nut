//**************************************************************\\
//CSGO map script by LzYoRHa (STEAM_1:0:191848162)              \\
//Codex Level Script for ze_project_codex              			\\
//**************************************************************\\

//        \`*-.                    
//         )  _`-.                 
//        .  : `. .                
//        : _   '  \               
//        ; *` _.   `*-._          
//        `-.-'          `-.       
//          ;       `       `.     
//          :.       .        \    
//          . \  .   :   .-'   .   
//          '  `+.;  ;  '      :   
//          :  '  |    ;       ;-. 
//          ; '   : :`-:     _.`* ;
// [bug] .*' /  .*' ; .*`- +'  `*' 
//       `*-*   `*-*  `*-*'
// Yeah I am a cat guy.

// ent_fire codex_script runscriptcode "lvl_c_end()"; setpos 0 13148 -1444

function codex_stage_start(){
    codex_prepare();
    EntFire("c_total_sound", "playsound", null, 0);
    //spawn
    EntFire("sky_spawn", "Disable", null, 0);
    EntFire("codex_psky_b_1", "Start", null, 15);
    EntFire("codex_psky_b_2", "Start", null, 15);
    EntFire("codex_psky_b_2", "Stop", null, 17.15);
    EntFire("codex_psky_b_1", "Stop", null, 17.65);
    EntFire("codex_psky_b_3", "Start", null, 18.15);
    EntFire("codex_psky_b_3", "Stop", null, 21.15);
    EntFire("codex_psky_p_1", "Start", null, 15);
    EntFire("codex_psky_p_2", "Start", null, 15);
    EntFire("codex_psky_p_2", "Stop", null, 17.15);
    EntFire("codex_psky_p_1", "Stop", null, 17.65);
    EntFire("codex_psky_p_3", "Start", null, 18.15);
    EntFire("codex_psky_p_3", "Stop", null, 21.15);
    EntFire("codex_psky_y_1", "Start", null, 15);
    EntFire("codex_psky_y_2", "Start", null, 15);
    EntFire("codex_psky_y_2", "Stop", null, 17.15);
    EntFire("codex_psky_y_1", "Stop", null, 17.65);
    EntFire("codex_psky_y_3", "Start", null, 18.15);
    EntFire("codex_psky_y_3", "Stop", null, 21.15);
    EntFire("codex_psky_r_1", "Start", null, 15);
    EntFire("codex_psky_r_2", "Start", null, 15);
    EntFire("codex_psky_r_2", "Stop", null, 17.15);
    EntFire("codex_psky_r_1", "Stop", null, 17.65);
    EntFire("codex_psky_r_3", "Start", null, 18.15);
    EntFire("codex_psky_r_3", "Stop", null, 21.15);
    EntFire("cc1", "Enable", null, 18);
    EntFire("server_command", "Command", "Say Current Stage ... CODEX", 20);
    EntFire("entity_script","RunScriptCode","count_down_30()",30);
    EntFire("codex_spawn_to_next_p", "Enable", null, 60);
    EntFire("tp_particle_codex_p", "Start", null, 60);
    EntFire("p01_to_mid_particle", "Start", null, 60);
    EntFire("codex_spawn_to_next_all", "Enable", null, 70);
    EntFire("codex_spawn_to_next_all_t", "Enable", null, 70);
    EntFire("sky_spawn", "Enable", null, 60);
    EntFire("sky_p01", "Disable", null, 70);
    EntFire("tp_particle_up","Start",null,70);
}

tp_indi <- 0
p_origin <- Vector(-7865, -8003, -3052);
b_origin <- Vector(-8192, 4592, -3756);
r_origin <- Vector(7168, 7168, 1404);
y_origin <- Vector(8192, -8192, -3900);

function codex_prepare(){
    //items
    EntFire("hm_item_b_button", "Lock", null, 1);
    EntFire("hm_item_p_button", "Lock", null, 1);
    EntFire("hm_item_y_button", "Lock", null, 1);
    EntFire("hm_item_r_button", "Lock", null, 1);
    EntFire("codex_spawn_tp_template", "ForceSpawn", null, 1);
    //Purple part
    p01_spawn_trigger_path();
    EntFire("partical_revocer_p_1", "Start", null, 1);
    EntFire("partical_revocer_p_2", "Start", null, 1);
    EntFire("partical_revocer_p_3", "Start", null, 1);
    EntFire("partical_revocer_p_4", "Start", null, 1);
    EntFire("partical_revocer_p_5", "Start", null, 1);
    EntFire("partical_revocer_p_6", "Start", null, 1);
    EntFire("partical_revocer_p_7", "Start", null, 1);
    EntFire("partical_revocer_p_8", "Start", null, 1);
    EntFire("codex_p_trigger", "Enable", null, 1);
    EntFire("p01_1_wall_brush", "Disable", null, 1);
    EntFire("p01_2_wall_brush", "Disable", null, 1);
    EntFire("codex_p01_return", "Enable", null, 1);
    EntFire("p01_progress_trigger", "Kill", null, 1);
    EntFire("p01_trigger_progress_rotating_1", "Kill", null, 1);
    EntFire("p01_trigger_progress_rotating_2", "Kill", null, 1);
    EntFire("p01_trigger_progress_rotating_3", "Kill", null, 1);
    EntFire("p01_trigger_progress_rotating_4", "Kill", null, 1);
    //Blue part
    EntFire("partical_revocer_b_1", "Start", null, 1);
    EntFire("partical_revocer_b_2", "Start", null, 1);
    EntFire("partical_revocer_b_3", "Start", null, 1);
    EntFire("partical_revocer_b_4", "Start", null, 1);
    EntFire("partical_revocer_b_5", "Start", null, 1);
    EntFire("codex_b_trigger", "Enable", null, 1);
    //Red part
    EntFire("partical_revocer_r_1", "Start", null, 1);
    EntFire("partical_revocer_r_2", "Start", null, 1);
    EntFire("partical_revocer_r_3", "Start", null, 1);
    EntFire("partical_revocer_r_4", "Start", null, 1);
    EntFire("partical_revocer_r_5", "Start", null, 1);
    EntFire("partical_revocer_r_6", "Start", null, 1);
    EntFire("partical_revocer_r_7", "Start", null, 1);
    EntFire("partical_revocer_r_8", "Start", null, 1);
    EntFire("r02_top_mdl_1", "Kill", null, 1);
    EntFire("codex_r_trigger", "Enable", null, 1);
    EntFire("red_script", "RunScriptCode", "r_mid_1_spawn(1)", 1);
    EntFire("red_script", "RunScriptCode", "r_mid_2_spawn(1)", 1);
    EntFire("red_script", "RunScriptCode", "r_mid_4_spawn(1)", 1);
    EntFire("codex_r01_return", "Enable", null, 1);
    //Yellow part
    EntFire("partical_revocer_y_1", "Start", null, 1);
    EntFire("partical_revocer_y_2", "Start", null, 1);
    EntFire("partical_revocer_y_3", "Start", null, 1);
    EntFire("partical_revocer_y_4", "Start", null, 1);
    EntFire("partical_revocer_y_5", "Start", null, 1);
    EntFire("partical_revocer_y_6", "Start", null, 1);
    EntFire("partical_revocer_y_7", "Start", null, 1);
    EntFire("partical_revocer_y_8", "Start", null, 1);
    EntFire("codex_y_trigger", "Enable", null, 1);
    EntFire("tp_y01_0_to_0", "Enable", null, 1);
    EntFire("tp_y01_0_to_1", "Enable", null, 1);
    EntFire("tp_particle_y01_0_to_0", "Start", null, 1);
    EntFire("tp_particle_y01_0_to_1", "Start", null, 1);
    EntFire("codex_y01_return", "Enable", null, 1);
    y01_linear_move_1();
    y01_linear_move_2();
    y01_linear_move_3();
    //Other
    EntFire("r_tower_door_linear", "Open", null, 1);

    EntFire("c_codex_wall", "Enable", null, 1);
    EntFire("c_codex_wall_particle", "Start", null, 1);
    EntFire("codex_r_return", "Enable", null, 1);
    EntFire("c_codex_wall_1", "Disable", null, 1);
    EntFire("map_by_mdl", "Disable", null, 1);
    EntFire("c_lz_mdl", "Disable", null, 1);
    EntFire("special_thanks_mdl", "Disable", null, 1);
    EntFire("c_ko_mdl", "Disable", null, 1);
    EntFire("c_th_mdl", "Disable", null, 1);
    EntFire("c_rh_mdl", "Disable", null, 1);
    EntFire("p02_wall_1", "Disable", null, 1);
    EntFire("p02_wall_2", "Disable", null, 1);
}

p_touched <- 0;
function p_touch_once(){
    p_touched += 1;
    if (p_touched == 8){
        EntFire("game_text_1", "SetText", "[8/8]", 0);
        EntFire("game_text_1", "Display", null, 0.01);
        EntFire("entity_script","RunScriptCode","count_down_10()",1);
        EntFire("p01_complete_tp_ct", "Enable", null, 11);
        EntFire("p01_complete_tp_t", "Enable", null, 16);
        EntFire("sky_p01", "Enable", null, 11);
        EntFire("sky_pup", "Disable", null, 16);
    }
    else{
        local text = "[" + p_touched.tostring() + "/8]";
        EntFire("game_text_1", "SetText", text, 0);
        EntFire("game_text_1", "Display", null, 0.01);
    }
}

function p_recover(){
    EntFire("c_total_sound", "Volume", "8", 0);
    EntFire("c_total_sound", "Volume", "6", 1);
    EntFire("c_total_sound", "Volume", "4", 2);
    EntFire("c_total_sound", "Volume", "2", 3);
    EntFire("c_total_sound", "Volume", "1", 4);
    EntFire("c_p_sound", "playsound", null, 5);
    EntFire("c_total_sound", "Volume", "2", 25);
    EntFire("c_total_sound", "Volume", "3", 26);
    EntFire("c_total_sound", "Volume", "4", 27);
    EntFire("c_total_sound", "Volume", "6", 28);
    EntFire("c_total_sound", "Volume", "8", 29);
    EntFire("c_total_sound", "Volume", "10", 30);
    EntFire("server_command", "Command", "Say Recovering PURPLE......", 5);
    EntFire("codex_psky_p_1", "Start", null, 10);
    EntFire("codex_psky_p_2", "Start", null, 10);
    EntFire("codex_psky_p_2", "Stop", null, 12.15);
    EntFire("codex_psky_p_1", "Stop", null, 12.65);
    EntFire("codex_psky_p_3", "Start", null, 13.15);
    EntFire("codex_psky_p_3", "Stop", null, 16.15);
    EntFire("server_command", "Command", "Say Color PURPLE Recovered", 14);
    EntFire("server_command", "Command", "Say PURPLE Item Unlock", 14.1);

    EntFire("sky_bot_gear_rotating_p_0", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_p_1", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_p_2", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_p_3", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_p_4", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_p_5", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_p_6", "Setspeed", 0.2, 12);
    EntFire("hm_item_p_button", "Unlock", null, 14);
    EntFire("hm_item_p_ring_top", "SetSpeed", 0.1, 14);
    EntFire("hm_item_p_ring_mid", "SetSpeed", 0.1, 14);
    EntFire("hm_item_p_ring_bot", "SetSpeed", 0.1, 14);

    EntFire("cc1", "Disable", null, 14);
    EntFire("cc2", "Enable", null, 14);
    EntFire("entity_script","RunScriptCode","count_down_30()",20);
    EntFire("sky_pup", "Enable", null, 50);
    EntFire("codex_spawn_to_next_p", "Disable", null, 49.9);
    EntFire("codex_spawn_to_next_all", "Disable", null, 49.9);
    EntFire("up_to_next_p", "Enable", null, 50);
    EntFire("tp_particle_pup", "Start", null, 50);
    EntFire("codex_spawn_to_next_all_t", "Disable", null, 57.9);
    EntFire("up_to_next_all_p", "Enable", null, 58);

    EntFire("entity_script","RunScriptCode","count_down_60()",50);
    EntFire("sky_spawn", "Disable", null, 58);

    EntFire("entity_script","RunScriptCode","set_tp_indi(1)",109);
    EntFire("tp_particle_codex_b", "Start", null, 110);
    EntFire("codex_spawn_to_next_b", "Enable", null, 110);
    EntFire("codex_spawn_to_next_all", "Enable", null, 120);
    EntFire("codex_spawn_to_next_all_t", "Enable", null, 120);
    EntFire("sky_spawn", "Enable", null, 110);
    EntFire("sky_b02", "Disable", null, 120);
}

b_touched <- 0;
function b_touch_once(){
    b_touched += 1;
    if (b_touched == 5){
        EntFire("game_text_1", "SetText", "[5/5]", 0);
        EntFire("game_text_1", "Display", null, 0.01);
        EntFire("entity_script","RunScriptCode","count_down_30()",1);
        EntFire("b02_complete_ct", "Enable", null, 31);
        EntFire("b02_complete_t", "Enable", null, 36);
        EntFire("sky_b02", "Enable", null, 31);
        EntFire("sky_bup", "Disable", null, 36);
    }
    else{
        local text = "[" + b_touched.tostring() + "/5]";
        EntFire("game_text_1", "SetText", text, 0);
        EntFire("game_text_1", "Display", null, 0.01);
    }
}

function b_recover(){
    EntFire("c_total_sound", "Volume", "8", 0);
    EntFire("c_total_sound", "Volume", "6", 1);
    EntFire("c_total_sound", "Volume", "4", 2);
    EntFire("c_total_sound", "Volume", "2", 3);
    EntFire("c_total_sound", "Volume", "1", 4);
    EntFire("c_b_sound", "playsound", null, 5);
    EntFire("c_total_sound", "Volume", "2", 25);
    EntFire("c_total_sound", "Volume", "3", 26);
    EntFire("c_total_sound", "Volume", "4", 27);
    EntFire("c_total_sound", "Volume", "6", 28);
    EntFire("c_total_sound", "Volume", "8", 29);
    EntFire("c_total_sound", "Volume", "10", 30);
    EntFire("server_command", "Command", "Say Recovering BLUE......", 5);
    EntFire("codex_psky_b_1", "Start", null, 10);
    EntFire("codex_psky_b_2", "Start", null, 10);
    EntFire("codex_psky_b_2", "Stop", null, 12.15);
    EntFire("codex_psky_b_1", "Stop", null, 12.65);
    EntFire("codex_psky_b_3", "Start", null, 13.15);
    EntFire("codex_psky_b_3", "Stop", null, 16.15);
    EntFire("server_command", "Command", "Say Color BLUE Recovered", 14);
    EntFire("server_command", "Command", "Say BLUE Item Unlock", 14.1);

    EntFire("sky_bot_gear_rotating_b_0", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_b_1", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_b_2", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_b_3", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_b_4", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_b_5", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_b_6", "Setspeed", 0.2, 12);

    EntFire("hm_item_b_button", "Unlock", null, 14);
    EntFire("hm_item_b_ring_top", "SetSpeed", 0.1, 14);
    EntFire("hm_item_b_ring_mid", "SetSpeed", 0.1, 14);
    EntFire("hm_item_b_ring_bot", "SetSpeed", 0.1, 14);

    EntFire("cc2", "Disable", null, 14);
    EntFire("cc3", "Enable", null, 14);
    EntFire("entity_script","RunScriptCode","count_down_30()",20);
    EntFire("sky_bup", "Enable", null, 50);
    EntFire("codex_spawn_to_next_b", "Disable", null, 49.9);
    EntFire("codex_spawn_to_next_all", "Disable", null, 49.9);
    EntFire("up_to_next_b", "Enable", null, 50);
    EntFire("tp_particle_bup", "Start", null, 50);
    EntFire("codex_spawn_to_next_all_t", "Disable", null, 57.9);
    EntFire("up_to_next_all_b", "Enable", null, 58);
    EntFire("entity_script","RunScriptCode","count_down_60()",50);
    EntFire("sky_spawn", "Disable", null, 58);

    EntFire("entity_script","RunScriptCode","set_tp_indi(2)",109);
    EntFire("tp_particle_codex_r", "Start", null, 110);
    EntFire("codex_spawn_to_next_r", "Enable", null, 110);
    EntFire("codex_spawn_to_next_all", "Enable", null, 120);
    EntFire("codex_spawn_to_next_all_t", "Enable", null, 120);
    EntFire("sky_spawn", "Enable", null, 110);
    EntFire("sky_r01", "Disable", null, 120);
}

r_touched <- 0;
function r_touch_once(){
    r_touched += 1;
    if (r_touched == 8){
        EntFire("game_text_1", "SetText", "[8/8]", 0);
        EntFire("game_text_1", "Display", null, 0.01);
        EntFire("entity_script","RunScriptCode","count_down_30()",1);
        EntFire("r01_complete_ct", "Enable", null, 31);
        EntFire("r01_complete_t", "Enable", null, 36);
        EntFire("r02_mid_breakable", "Kill", null, 36);
        EntFire("sky_r01", "Enable", null, 31);
        EntFire("sky_rup", "Disable", null, 36);
    }
    else{
        local text = "[" + r_touched.tostring() + "/8]";
        EntFire("game_text_1", "SetText", text, 0);
        EntFire("game_text_1", "Display", null, 0.01);
    }
}

function r_recover(){
    EntFire("c_total_sound", "Volume", "8", 0);
    EntFire("c_total_sound", "Volume", "6", 1);
    EntFire("c_total_sound", "Volume", "4", 2);
    EntFire("c_total_sound", "Volume", "2", 3);
    EntFire("c_total_sound", "Volume", "1", 4);
    EntFire("c_r_sound", "playsound", null, 5);
    EntFire("c_total_sound", "Volume", "2", 25);
    EntFire("c_total_sound", "Volume", "3", 26);
    EntFire("c_total_sound", "Volume", "4", 27);
    EntFire("c_total_sound", "Volume", "6", 28);
    EntFire("c_total_sound", "Volume", "8", 29);
    EntFire("c_total_sound", "Volume", "10", 30);
    EntFire("server_command", "Command", "Say Recovering RED......", 5);
    EntFire("codex_psky_r_1", "Start", null, 10);
    EntFire("codex_psky_r_2", "Start", null, 10);
    EntFire("codex_psky_r_2", "Stop", null, 12.15);
    EntFire("codex_psky_r_1", "Stop", null, 12.65);
    EntFire("codex_psky_r_3", "Start", null, 13.15);
    EntFire("codex_psky_r_3", "Stop", null, 16.15);
    EntFire("server_command", "Command", "Say Color RED Recovered", 14);
    EntFire("server_command", "Command", "Say RED Item Unlock", 14.1);
    EntFire("sky_bot_gear_rotating_r_0", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_r_1", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_r_2", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_r_3", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_r_4", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_r_5", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_r_6", "Setspeed", 0.2, 12);
    EntFire("hm_item_r_button", "Unlock", null, 14);
    EntFire("hm_item_r_ring_top", "SetSpeed", 0.1, 14);
    EntFire("hm_item_r_ring_mid", "SetSpeed", 0.1, 14);
    EntFire("hm_item_r_ring_bot", "SetSpeed", 0.1, 14);
    EntFire("cc3", "Disable", null, 14);
    EntFire("cc4", "Enable", null, 14);
    EntFire("entity_script","RunScriptCode","count_down_30()",20);
    EntFire("sky_rup", "Enable", null, 50);
    EntFire("codex_spawn_to_next_r", "Disable", null, 49.9);
    EntFire("codex_spawn_to_next_all", "Disable", null, 49.9);
    EntFire("up_to_next_r", "Enable", null, 50);
    EntFire("tp_particle_rup", "Start", null, 50);
    EntFire("codex_spawn_to_next_all_t", "Disable", null, 57.9);
    EntFire("up_to_next_all_r", "Enable", null, 58);
    EntFire("entity_script","RunScriptCode","count_down_60()",50);
    EntFire("sky_spawn", "Disable", null, 58);

    EntFire("entity_script","RunScriptCode","set_tp_indi(3)",109);
    EntFire("tp_particle_codex_y", "Start", null, 110);
    EntFire("codex_spawn_to_next_y", "Enable", null, 110);
    EntFire("codex_spawn_to_next_all", "Enable", null, 120);
    EntFire("codex_spawn_to_next_all_t", "Enable", null, 120);
    EntFire("sky_spawn", "Enable", null, 110);
    EntFire("sky_y01", "Disable", null, 120);
}

y_touched <- 0;
function y_touch_once(){
    y_touched += 1;
    if (y_touched == 8){
        EntFire("game_text_1", "SetText", "[8/8]", 0);
        EntFire("game_text_1", "Display", null, 0.01);
        EntFire("entity_script","RunScriptCode","count_down_10()",1);
        EntFire("y01_complete_tp_ct", "Enable", null, 11);
        EntFire("y01_complete_tp_t", "Enable", null, 16);
        EntFire("sky_y01", "Enable", null, 11);
        EntFire("sky_yup", "Disable", null, 16);
    }
    else{
        local text = "[" + y_touched.tostring() + "/8]";
        EntFire("game_text_1", "SetText", text, 0);
        EntFire("game_text_1", "Display", null, 0.01);
    }
}

function y_recover(){
    EntFire("c_total_sound", "Volume", "8", 0);
    EntFire("c_total_sound", "Volume", "6", 1);
    EntFire("c_total_sound", "Volume", "4", 2);
    EntFire("c_total_sound", "Volume", "2", 3);
    EntFire("c_total_sound", "Volume", "1", 4);
    EntFire("c_y_sound", "playsound", null, 5);
    EntFire("c_total_sound", "Volume", "2", 25);
    EntFire("c_total_sound", "Volume", "3", 26);
    EntFire("c_total_sound", "Volume", "4", 27);
    EntFire("c_total_sound", "Volume", "6", 28);
    EntFire("c_total_sound", "Volume", "8", 29);
    EntFire("c_total_sound", "Volume", "10", 30);
    EntFire("server_command", "Command", "Say Recovering YELLOW......", 5);
    EntFire("codex_psky_y_1", "Start", null, 10);
    EntFire("codex_psky_y_2", "Start", null, 10);
    EntFire("codex_psky_y_2", "Stop", null, 12.15);
    EntFire("codex_psky_y_1", "Stop", null, 12.65);
    EntFire("codex_psky_y_3", "Start", null, 13.15);
    EntFire("codex_psky_y_3", "Stop", null, 16.15);
    EntFire("server_command", "Command", "Say Color YELLOW Recovered", 14);
    EntFire("sky_bot_gear_rotating_y_0", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_y_1", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_y_2", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_y_3", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_y_4", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_y_5", "Setspeed", 0.2, 12);
    EntFire("sky_bot_gear_rotating_y_6", "Setspeed", 0.2, 12);
    EntFire("server_command", "Command", "Say YELLOW Item Unlock", 14.1);
    EntFire("hm_item_y_button", "Unlock", null, 14);
    EntFire("hm_item_y_ring_top", "SetSpeed", 0.1, 14);
    EntFire("hm_item_y_ring_mid", "SetSpeed", 0.1, 14);
    EntFire("hm_item_y_ring_bot", "SetSpeed", 0.1, 14);

    EntFire("cc4", "Disable", null, 14);
    EntFire("entity_script","RunScriptCode","count_down_30()",20);
    EntFire("sky_yup", "Enable", null, 50);
    EntFire("codex_spawn_to_next_y", "Disable", null, 49.9);
    EntFire("codex_spawn_to_next_all", "Disable", null, 49.9);
    EntFire("up_to_next_y", "Enable", null, 50);
    EntFire("tp_particle_tup", "Start", null, 50);
    EntFire("codex_spawn_to_next_all_t", "Disable", null, 57.9);
    EntFire("up_to_next_all_y", "Enable", null, 58);

    EntFire("entity_script","RunScriptCode","count_down_60()",50);
    EntFire("sky_spawn", "Disable", null, 58);
        
    EntFire("tp_particle_codex_p", "Stop", null, 102);
    EntFire("tp_particle_spawn_to_p01", "Start", null, 102.5);

    EntFire("tp_particle_codex_b", "Stop", null, 104);
    EntFire("tp_particle_spawn_to_b01", "Start", null, 104.5);

    EntFire("tp_particle_codex_r", "Stop", null, 106);
    EntFire("tp_particle_spawn_to_r01", "Start", null, 106.5);

    EntFire("tp_particle_codex_y", "Stop", null, 108);
    EntFire("tp_particle_spawn_to_y01", "Start", null, 108.5);

    EntFire("tp_particle_codex_1", "Start", null, 110);
    EntFire("tp_particle_codex_2", "Start", null, 110);
    EntFire("tp_particle_codex_3", "Start", null, 110);
    EntFire("tp_particle_codex_4", "Start", null, 110);
    
    EntFire("spawn_to_next_tp", "Enable", null, 110);
    EntFire("codex_spawn_tp_base", "Kill", null, 110);
    EntFire("spawn_to_next_tp_all", "Enable", null, 110);
    
    EntFire("sky_spawn", "Enable", null, 110);
    EntFire("sky_rfinal", "Disable", null, 110);
    EntFire("codex_script","RunScriptCode","credits_boss_start()",110);
    EntFire("c_total_sound", "Volume", "8", 105);
    EntFire("c_total_sound", "Volume", "6", 106);
    EntFire("c_total_sound", "Volume", "4", 107);
    EntFire("c_total_sound", "Volume", "2", 108);
    EntFire("c_total_sound", "Volume", "1", 109);
    EntFire("c_total_sound", "stopsound", null, 110);
    EntFire("c_boss_sound", "playsound", null, 110);
}

basic_ang_0 <- Vector(0, 0, 0);
p01_trigger_path <- Entities.FindByName(null, "p01_trigger_path_maker");
p01_trigger_path_origins <- [
    Vector(-9886, -6022, -2024),
    Vector(-10362, -9886, -2024),
    Vector(-6498, -10362, -2024),
    Vector(-6022, -6498, -2024),
    Vector(-10362, -6498, -2024),
    Vector(-9886, -10362, -2024),
    Vector(-6022, -9886, -2024),
    Vector(-6498, -6022, -2024)
];
function p01_spawn_trigger_path() {
    for (local i = 0 ; i < 8 ; i++){
            p01_trigger_path.SpawnEntityAtLocation(p01_trigger_path_origins[i],basic_ang_0);
        }
}

function y01_linear_move_1(){
    EntFire("y01_01_0", "Open", null, 0);
    EntFire("y01_01_1", "Open", null, 0);
    EntFire("y01_01_0", "Close", null, 8);
    EntFire("y01_01_1", "Close", null, 8);
    EntFire("codex_script", "RunScriptCode", "y01_linear_move_1()", 16);
}

function y01_linear_move_2(){
    EntFire("y01_13", "Open", null, 0);
    EntFire("y01_13", "Close", null, 10);
    EntFire("codex_script", "RunScriptCode", "y01_linear_move_2()", 20);
}

function y01_linear_move_3(){
    EntFire("y01_34_0", "Open", null, 0);
    EntFire("y01_34_1", "Open", null, 0);
    EntFire("y01_34_0", "Close", null, 8);
    EntFire("y01_34_1", "Close", null, 8);
    EntFire("codex_script", "RunScriptCode", "y01_linear_move_3()", 16);
}

//***************************************************
//Boss and final laser
boss_indi <- 0;

ckey_boss_health_total <- 500;
c_boss_hp_per_ct <- 1500;
c_boss_hp_ct_die <- 1200;

function set_cboss_hp(health1, health2) {
    c_boss_hp_per_ct = health1;
    c_boss_hp_ct_die = health2
}

function c_boss_add_health() {
    ckey_boss_health_total += c_boss_hp_per_ct;
}

function get_cboss_hp() {
    local boss_handel = Entities.FindByName(null, "c_lz_break");
    if (boss_indi == 1){
        boss_handel = Entities.FindByName(null, "c_ko_break");
    }
    if (boss_indi == 2){
        boss_handel = Entities.FindByName(null, "c_th_break");
    }
    if (boss_indi == 3){
        boss_handel = Entities.FindByName(null, "c_rh_break");
    }
    local current_hp = boss_handel.GetHealth();
    print(current_hp);
}

function ckey_boss_set_health() {
    local boss_handel = Entities.FindByName(null, "c_lz_break");
    if (boss_indi == 1){
        boss_handel = Entities.FindByName(null, "c_ko_break");
    }
    if (boss_indi == 2){
        boss_handel = Entities.FindByName(null, "c_th_break");
    }
    if (boss_indi == 3){
        boss_handel = Entities.FindByName(null, "c_rh_break");
    }
    boss_handel.SetHealth(ckey_boss_health_total);
}

function ckey_boss_subtract_health() {
    ckey_boss_health_total -= c_boss_hp_per_ct;
    local boss_handel = Entities.FindByName(null, "c_lz_break");
    if (boss_indi == 1){
        boss_handel = Entities.FindByName(null, "c_ko_break");
    }
    if (boss_indi == 2){
        boss_handel = Entities.FindByName(null, "c_th_break");
    }
    if (boss_indi == 3){
        boss_handel = Entities.FindByName(null, "c_rh_break");
    }
    local current_hp = boss_handel.GetHealth();
    if (current_hp > (c_boss_hp_ct_die - 1000))
    {
        local new_hp = current_hp - c_boss_hp_ct_die;
        boss_handel.SetHealth(new_hp);
    }
    else
    {
        boss_handel.SetHealth(100);
    }
}

function random_from_list(Array){
    local r_number = rand();
    local index = r_number % Array.len();
    return Array[index];
}

function shuffle(Array){
    local len = Array.len();
    for (local i = 0 ; i < len ; i++) {
        local randindex = RandomInt(0,len-1);
        local temp = Array[i];
        Array[i] = Array[randindex];
        Array[randindex] = temp;
    }
    return Array;
}

ko_k_att_maker <- Entities.FindByName(null, "credits_k_maker");
ko_o_att_maker <- Entities.FindByName(null, "credits_o_maker");
ko_e_att_maker <- Entities.FindByName(null, "credits_e_maker");
ko_n_att_maker <- Entities.FindByName(null, "credits_n_maker");
ko_origins <- [
    Vector(-704, 10082, -1456),
    Vector(-528, 10082, -1456),
    Vector(-352, 10082, -1456),
    Vector(-176, 10082, -1456),
    Vector(0, 10082, -1456),
    Vector(176, 10082, -1456),
    Vector(352, 10082, -1456),
    Vector(528, 10082, -1456),
    Vector(704, 10082, -1456)
];

function ko_att_select(){
    ko_origins = shuffle(ko_origins);
    EntFire("codex_script","RunScriptCode","ko_att_k_spawn()", 0);
    EntFire("codex_script","RunScriptCode","ko_att_o_spawn()", 1);
    EntFire("codex_script","RunScriptCode","ko_att_e_spawn()", 2);
    EntFire("codex_script","RunScriptCode","ko_att_n_spawn()", 3);
}

function ko_att_k_spawn(){
    ko_k_att_maker.SpawnEntityAtLocation(ko_origins[0], basic_ang_0);
    ko_k_att_maker.SpawnEntityAtLocation(ko_origins[1], basic_ang_0);
}

function ko_att_o_spawn(){
    ko_o_att_maker.SpawnEntityAtLocation(ko_origins[2], basic_ang_0);
    ko_o_att_maker.SpawnEntityAtLocation(ko_origins[3], basic_ang_0);
}

function ko_att_e_spawn(){
    ko_e_att_maker.SpawnEntityAtLocation(ko_origins[4], basic_ang_0);
    ko_e_att_maker.SpawnEntityAtLocation(ko_origins[5], basic_ang_0);
}

function ko_att_n_spawn(){
    ko_n_att_maker.SpawnEntityAtLocation(ko_origins[6], basic_ang_0);
    ko_n_att_maker.SpawnEntityAtLocation(ko_origins[7], basic_ang_0);
}

rh_att_maker <- Entities.FindByName(null, "credits_rh_maker");
rh_indi <- 0;
rh_zm_maker_origin_1 <- Vector(512, 10384, -1536);
rh_zm_maker_origin_2 <- Vector(-512, 10384, -1536);

rh_zm_maker_dest_origin_1_1 <- Vector(1072, 9760, -1536);
rh_zm_maker_dest_origin_1_2 <- Vector(-1072, 9760, -1536);
rh_zm_maker_dest_origin_2_1 <- Vector(1072, 9248, -1536);
rh_zm_maker_dest_origin_2_2 <- Vector(-1072, 9248, -1536);
rh_zm_maker_dest_origin_3_1 <- Vector(1072, 8736, -1536);
rh_zm_maker_dest_origin_3_2 <- Vector(-1072, 8736, -1536);

rh_zm_dest_origin_1_1 <- Vector(1072, 9760, -1420);
rh_zm_dest_origin_1_2 <- Vector(-1072, 9760, -1420);
rh_zm_dest_origin_2_1 <- Vector(1072, 9248, -1420);
rh_zm_dest_origin_2_2 <- Vector(-1072, 9248, -1420);
rh_zm_dest_origin_3_1 <- Vector(1072, 8736, -1420);
rh_zm_dest_origin_3_2 <- Vector(-1072, 8736, -1420);
function rh_zm_tp_1(){
    activator.SetVelocity(basic_ang_0);
    activator.SetAngles(0, 180, 0);
    if (rh_indi == 0){
        activator.SetOrigin(rh_zm_dest_origin_1_1);
    }
    else if (rh_indi == 1){
        activator.SetOrigin(rh_zm_dest_origin_2_1);
    }
    else if (rh_indi == 2){
        activator.SetOrigin(rh_zm_dest_origin_3_1);
    }
}
function rh_zm_tp_2(){
    activator.SetVelocity(basic_ang_0);
    activator.SetAngles(0, 0, 0);
    if (rh_indi == 0){
        activator.SetOrigin(rh_zm_dest_origin_1_2);
    }
    else if (rh_indi == 1){
        activator.SetOrigin(rh_zm_dest_origin_2_2);
    }
    else if (rh_indi == 2){
        activator.SetOrigin(rh_zm_dest_origin_3_2);
    }
}

function rh_att_spawn_one(){
    rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_origin_1, basic_ang_0);
    rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_origin_2, basic_ang_0);
    if (rh_indi == 0){
        rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_dest_origin_1_1, basic_ang_0);
        rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_dest_origin_1_2, basic_ang_0);
    }
    else if (rh_indi == 1){
        rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_dest_origin_2_1, basic_ang_0);
        rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_dest_origin_2_2, basic_ang_0);
    }
    else if (rh_indi == 2){
        rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_dest_origin_3_1, basic_ang_0);
        rh_att_maker.SpawnEntityAtLocation(rh_zm_maker_dest_origin_3_2, basic_ang_0);
    }
}

function rh_att_select(){
    rh_indi = RandomInt(0,2);
    rh_att_spawn_one();
    EntFire("rh_zm_tp_trigger", "Enable", null, 1);
    EntFire("rh_zm_tp_trigger", "Disable", null, 7);
}

th_att_maker <- Entities.FindByName(null, "credits_th_maker");

function th_att_select(){
    local offset = RandomInt(0,2) * 344;
    th_att_maker.SpawnEntityAtLocation(Vector(-344 + offset, 10098, -1456), basic_ang_0);
}

function increase_health_low(){
    local health_m = activator.GetMaxHealth() + 5;
    local health = activator.GetHealth() + 5;
    activator.SetMaxHealth(health_m);
    activator.SetHealth(health);
}

function c_zm_tp(){
    local tp_origin = Vector(0, 10384, -1444);
    if(boss_indi == 4){
        tp_origin = Vector(0, 3872, -1348);
    }
    activator.SetOrigin(tp_origin);
}

function boss_indi_increase(){
    boss_indi += 1;
}

function credits_boss_start(){
    EntFire("credits_lz_timer", "Enable", null, 52);
    EntFire("tp_particle_codex_1","Stop",null, 30);
    EntFire("tp_particle_codex_2","Stop",null, 30);
    EntFire("tp_particle_codex_3","Stop",null, 30);
    EntFire("tp_particle_codex_4","Stop",null, 30);
    EntFire("c_codex_wall_1","Disable",null, 0);
    EntFire("entity_script","RunScriptCode","count_down_30()",0);
    EntFire("c_codex_wall_1","Enable",null, 30);
    EntFire("c_codex_wall_particle_1","Start",null, 30);
    EntFire("credits_boss_hurt","Enable",null, 30);
    EntFire("credits_boss_scale","Enable",null, 30);
    EntFire("map_by_mdl","Enable",null, 30);
    EntFire("map_by_linear","Open",null, 30);
    EntFire("c_codex_wall","Disable",null, 30);
    EntFire("c_codex_wall_particle","Stop",null, 30);
    EntFire("c_codex_wall","Enable",null, 50);
    EntFire("c_codex_wall_particle","Start",null, 50);
    EntFire("credits_boss_zm_tp","Enable",null, 50);
    EntFire("credits_boss_zm_tp","Disable",null, 50.1);
    
    EntFire("map_by_mdl","Kill",null, 50);
    EntFire("c_lz_mdl","Enable",null, 50);
    EntFire("c_lz_linear","Open",null, 50);
    EntFire("codex_script", "RunScriptCode", "ckey_boss_set_health()", 53);
}

function credits_boss_lz_beat(){
    EntFire("credits_lz_timer", "Disable", null, 0);
    EntFire("credits_lz_timer", "Kill", null, 0.1);
    boss_indi_increase();
    EntFire("special_thanks_mdl","Enable",null, 0);
    EntFire("special_thanks_linear","Open",null, 0);
    EntFire("c_codex_wall","Disable",null, 0);
    EntFire("c_codex_wall_particle","Stop",null, 0);
    EntFire("c_codex_wall","Enable",null, 20);
    EntFire("c_codex_wall_particle","Start",null, 20);
    EntFire("credits_boss_zm_tp","Enable",null, 20);
    EntFire("credits_boss_zm_tp","Disable",null, 20.1);

    EntFire("special_thanks_mdl","Kill",null, 20);
    EntFire("c_ko_mdl","Enable",null, 20);
    EntFire("c_ko_linear","Open",null, 20);
    EntFire("codex_script", "RunScriptCode", "ckey_boss_set_health()", 23);
    EntFire("credits_ko_timer", "Enable", null, 20);
}

function credits_boss_ko_beat(){
    EntFire("credits_ko_timer", "Disable", null, 0);
    EntFire("credits_ko_timer", "Kill", null, 0.1);
    boss_indi_increase();
    EntFire("c_th_mdl","Enable",null, 0);
    EntFire("c_th_linear","Open",null, 0);
    EntFire("codex_script", "RunScriptCode", "ckey_boss_set_health()", 3);
    EntFire("credits_th_timer", "Enable", null, 0);
}

function credits_boss_th_beat(){
    EntFire("credits_th_timer", "Disable", null, 0);
    EntFire("credits_th_timer", "Kill", null, 0.1);
    boss_indi_increase();
    EntFire("c_rh_mdl","Enable",null, 0);
    EntFire("c_rh_linear","Open",null, 0);
    EntFire("codex_script", "RunScriptCode", "ckey_boss_set_health()", 3);
    EntFire("credits_rh_timer", "Enable", null, 3);
}

function credits_boss_rh_beat(){
    boss_indi_increase();
    EntFire("c_codex_wall","Disable",null, 0);
    EntFire("c_codex_wall_particle","Stop",null, 0);
    EntFire("credits_rh_timer", "Disable", null, 0);
    EntFire("credits_rh_timer", "Kill", null, 0.1);
    EntFire("credits_boss_zm_tp","Enable",null, 1);
    EntFire("credits_boss_scale","Kill",null, 1);
    EntFire("credits_boss_hurt","Kill",null, 1);
    EntFire("r_tower_door_tp_ct","Enable",null, 1);
    
    EntFire("c_boss_sound", "Volume", "10", 0);
    EntFire("c_boss_sound", "Volume", "9", 0.5);
    EntFire("c_boss_sound", "Volume", "8", 1);
    EntFire("c_boss_sound", "Volume", "7", 1.25);
    EntFire("c_boss_sound", "Volume", "6", 1.5);
    EntFire("c_boss_sound", "Volume", "5", 1.75);
    EntFire("c_boss_sound", "Volume", "4", 2);
    EntFire("c_boss_sound", "Volume", "3", 2.25);
    EntFire("c_boss_sound", "Volume", "2", 2.5);
    EntFire("c_boss_sound", "Volume", "1", 2.75);
    EntFire("c_boss_sound", "Volume", "0", 3);
    EntFire("c_boss_sound", "stopsound", null, 3);
    EntFire("tp_particle_codex_1","Start",null, 1);
    EntFire("tp_particle_codex_2","Start",null, 1);
    EntFire("tp_particle_codex_3","Start",null, 1);
    EntFire("tp_particle_codex_4","Start",null, 1);
    EntFire("tp_particle_codex_1_1","Start",null, 1);
    EntFire("tp_particle_codex_2_1","Start",null, 1);
    EntFire("tp_particle_codex_3_1","Start",null, 1);
    EntFire("tp_particle_codex_4_1","Start",null, 1);
    EntFire("codex_r_return", "Disable", null, 1);
    EntFire("skybox_particle_c_b","Start",null, 5);
    EntFire("skybox_particle_c_p","Start",null, 5);
    EntFire("skybox_particle_c_y","Start",null, 5);
    EntFire("skybox_particle_r","Start",null, 5);
    EntFire("codex_script", "RunScriptCode", "lvl_c_end()", 20);
}

function lvl_c_end(){
    EntFire("c_escape_sound", "playsound", null, 0);
    EntFire("entity_script","RunScriptCode","count_down_150()",3);
    EntFire("key_to_tower_r","Enable",null, 7);
    EntFire("r_tower_door_linear","Kill",null, 0);
    EntFire("c_drop_block","Disable",null, 0);
    //plaser_drop
    EntFire("cfinal_plaser_timer","Enable",null,0);
    EntFire("cfinal_plaser_timer","RefireTime","2",10);
    EntFire("cfinal_plaser_timer","RefireTime","1",80);
    EntFire("cfinal_plaser_timer","RefireTime","0.5",90);
    EntFire("cfinal_plaser_timer","RefireTime","0.25",95);
    EntFire("cfinal_plaser_timer","Disable",null,97);
    //red laser
    EntFire("rfinal_laser_timer","Enable",null, 8);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 5);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 13);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 21);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 29);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 37);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 45);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 53);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 61);
    EntFire("red_script","RunScriptCode","r_final_platform_spawn()", 69);
    EntFire("rfinal_laser_timer","Disable",null, 80);
    EntFire("r_final_platform_breakable","Kill",null, 90);
    EntFire("r_final_watch_teleport", "Enable", null, 90);
    //ydrop_reverse
    EntFire("codex_script", "RunScriptCode", "c_y_drop_spawn()", 90);
    EntFire("c_drop_block","Enable",null, 100);
    EntFire("y_tower_drop_linear", "Open", null, 100);
    EntFire("y_tower_drop_linear", "Kill", null, 130);
    //platform go up
    EntFire("c_drop_block", "Disable", null, 114.9);
    EntFire("c_tower_ct_up_linear", "Open", null, 118);
    //blaser
    EntFire("codex_script", "RunScriptCode", "c_ending_blaser_start()", 138);
    //stage check
    EntFire("nuke_r", "Enable", null, 153);
}

p_laser <- Entities.FindByName(null, "pend_laser_maker");
p_drop_origin <- Vector(0, 13148, 1792);
p_drop_angs <- [];

function p_drop_c() {
    local ang_1 = (rand() % 36) * 10;
    p_laser.SpawnEntityAtLocation(p_drop_origin,Vector(0, ang_1, 0));
}

c_y_drop_origins <- [
    Vector(0, 13148, -2560), 
    Vector(0, 13148, -3456), 
    Vector(0, 13148, -4352), 
    Vector(0, 13148, -5284), 
    Vector(0, 13148, -6144)];
c_y_drop_makers <- [
    Entities.FindByName(null, "y_drop_reverse_1_maker"),
    Entities.FindByName(null, "y_drop_reverse_2_maker"),
    Entities.FindByName(null, "y_drop_reverse_3_maker"),
    Entities.FindByName(null, "y_drop_reverse_4_maker"),
    Entities.FindByName(null, "y_drop_reverse_5_maker")
];

function c_y_drop_spawn(){
    c_y_drop_origins = shuffle(c_y_drop_origins);
    for (local i = 0 ; i < 5 ; i++) {
        c_y_drop_makers[i].SpawnEntityAtLocation(c_y_drop_origins[i],basic_ang_0);
    }
}

c_blaser_3 <- Entities.FindByName(null, "c_laser_3_maker");
c_blaser_1 <- Entities.FindByName(null, "c_laser_1_maker");
c_blaser_2 <- Entities.FindByName(null, "c_laser_2_maker");

c_blaser_3_1_origin <- Vector(0, 10032, 10328);
c_blaser_3_2_origin <- Vector(0, 10032, 10288);
c_blaser_1_origin <- Vector(0, 10032, 10308);

function c_blaser_h_spawn(){
    if(RandomInt(0,9) <= 4){
        if(RandomInt(0,9) <= 4){
            c_blaser_3.SpawnEntityAtLocation(c_blaser_3_1_origin,basic_ang_0);
        }
        else{
            c_blaser_3.SpawnEntityAtLocation(c_blaser_3_2_origin,basic_ang_0);
        }
    }
    else{
        if(RandomInt(0,9) <= 4){
            c_blaser_1.SpawnEntityAtLocation(c_blaser_1_origin,basic_ang_0);
        }
        else{
            c_blaser_1.SpawnEntityAtLocation(c_blaser_1_origin,Vector(0,180,0));
        }
    }
}

function c_blaser_v_spawn(){
    local offset = RandomInt(-16,16) * 32;
    c_blaser_2.SpawnEntityAtLocation(Vector(0 + offset, 10032, 10328),basic_ang_0);
}

function c_ending_blaser_start() {
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 0);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 1);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 2);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 3);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 4);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 6);
    EntFire("codex_script", "RunScriptCode", "c_blaser_h_spawn()", 7);

    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 0.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 1.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 2.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 3.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 4.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 5.75);

    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 6.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.25);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.5);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.75);
    EntFire("codex_script", "RunScriptCode", "c_blaser_v_spawn()", 7.75);
}