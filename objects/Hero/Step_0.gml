//Hero//

//-----Mouvement-----//

//Avancer//
if(keyboard_check(ord("Z")) && place_free(x , y - collisionspeed))
{
	y = y - v;
	sprite_index = S_Hero_Back_Walk;
	
	if(keyboard_check(vk_shift))
	{
		y = y - run;
		sprite_index = S_Hero_Back_Run;
	}
}

if(keyboard_check_released(ord("Z")))
{
	sprite_index = S_Hero_Back;
}

//Reculer//
if(keyboard_check(ord("S")) && place_free(x , y + collisionspeed))
{
	y = y + v;
	sprite_index = S_Hero_Front_Walk;
	
	if(keyboard_check(vk_shift))
	{
		y = y + run;
		sprite_index = S_Hero_Front_Run;
	}
}

if(keyboard_check_released(ord("S")))
{
	sprite_index = S_Hero_Front;
}

//Gauche//
if(keyboard_check(ord("Q")) && place_free(x - collisionspeed , y))
{
	x = x - v;
	sprite_index =S_Hero_L_Side_Walk;
	
	if(keyboard_check(vk_shift))
	{
		x = x - run;
		sprite_index = S_Hero_L_Side_Run;
	}
}

if(keyboard_check_released(ord("Q")))
{
	sprite_index = S_Hero_L_Side;
}

//Droite//
if(keyboard_check(ord("D")) && place_free(x + collisionspeed , y))
{
	x = x + v;
	sprite_index = S_Hero_R_Side_Walk;
	
	if(keyboard_check(vk_shift))
	{
		x = x + run;
		sprite_index = S_Hero_R_Side_Run;
	}
}

if(keyboard_check_released(ord("D")))
{
	sprite_index = S_Hero_R_Side;
}

//PauseMenu//
if(keyboard_check(vk_escape))
{
	room_goto(PauseMenu);
}

//Teleportation//

if(keyboard_check(ord("E")))
{
	if(place_meeting(x , y , O_Collision_Bar_Koto_Aka_Exit))
	{
		room_goto(Koto_Aka);
		x = x + 346.8;
		y = y - 320;
	
	}
}