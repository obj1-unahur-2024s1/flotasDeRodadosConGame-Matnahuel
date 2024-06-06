import dependencia.*
import empleados.*


class Corsa {
	var property color = ""
	
	method capacidad(){
		return 4
	} 
	
	method velocidadMaxima(){
		return 150
	}
	
	method peso(){
		return 1300
	}
	method color(){
		return color
	}
}

class Kwid {
	
	var property tieneTanqueAdicional = true
	
	method capacidad(){
		return 
		if (tieneTanqueAdicional){
			3
		}
		else 4
	} 
	
	method velocidadMaxima(){
		return 
		if (tieneTanqueAdicional){
			120
		}
		else 110
	}
	
	method peso(){
		return 
		if (tieneTanqueAdicional){
			1350
		}
		else 1200
	}
	
	method color(){
		return "Azul"
	}
	
}

class Traffic {
	const peso = 4000
	var property interior 
	var property motor
	
	method capacidad(){
		return interior.capacidad()
	}

	
	method peso(){
		return  peso + interior.peso() + motor.peso()
	}
	
	method velocidadMaxima(){
		return motor.velocidadMaxima()
	}
	
	method color(){
		return "Blanco"
	}
}


object popular{
	method capacidad(){
		return 12
	}
	
	method peso(){
		return 1000
	}
}

object comodo{
	method capacidad(){
		return 5
	}
	
	method peso(){
		return 700
	}
}

object pulenta {
	method peso(){
		return 800
	}
	
	method velocidadMaxima(){
		return 130
	}
}

object bataton {
	method peso(){
		return 500
	}
	
	method velocidadMaxima(){
		return 80
	}
}


class AutosEspeciales{
	var property capacidad
	var property velocidad
	var property peso
	var property color = ""
	
	method capacidad(){
		return capacidad
	} 
	
	method velocidadMaxima(){
		return velocidad
	}
	
	method peso(){
		return peso
	}
	method color(){
		return color
	}
	
}



