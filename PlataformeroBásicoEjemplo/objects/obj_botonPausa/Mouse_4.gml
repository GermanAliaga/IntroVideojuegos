switch (id_button)
{
	case 0: //Continuar
		obj_pausaManager.paused = false;
		obj_pausaManager.update_pause();
	break;
	
	case 1: //Configuraciones
	break;
	
	case 2: //Salir
		game_end();
	break;
}