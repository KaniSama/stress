///exec_command("command")
switch (argument[0]) {
    case "exit": game_end(); break;
    case "next": room_goto_next(); break;
    case "menu": room_goto(rm_menu); break;
    case "game over": room_goto(rm_game_over); break;
    //case "settings": room_goto(rm_settings); break;
    
    default: show_debug_message("Something unexpected happened...#Don't panic, just restart the game! :)"); break;
}
