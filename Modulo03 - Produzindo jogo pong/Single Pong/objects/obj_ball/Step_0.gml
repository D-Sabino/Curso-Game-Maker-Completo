/// @description Insert description here
// You can write your code in this editor

if (global.mododejogo = 1){
	if (x < -16){
		instance_destroy(obj_ball);
		show_message("Você perdeu o jogo! - Número de pongs: " + string(global.pongs));
		global.pongs = 0;
		room_restart();
	}
	else if( x > room_width){
		instance_destroy(obj_ball);
		show_message("Parabéns, você ganhou o jogo! - Número de pongs: " + string(global.pongs));
		room_restart();
	}
}
else{ //Multiplayer
	if (x < -16){
		instance_destroy(obj_ball);
		show_message("Jogador 02 ganhou! - Número de pongs: " + string(global.pongs));
		global.pongs = 0;
		room_restart();
	}
	else if( x > room_width){
		instance_destroy(obj_ball);
		show_message("Jogador 01 ganhou! - Número de pongs: " + string(global.pongs));
		room_restart();
		global.pongs = 0;
	}
}