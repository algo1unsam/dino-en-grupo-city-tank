import wollok.game.*



class Auto{
	var direccion
	var property  imagen
	const property velocidad
	var vivo = true 
	var property position
	
	
	method recive_disparo() {}
	
	method nuevaDireccion(){}

	method colicion( algo ){
		//funcion colicion (self, algo)
			
		
	}
		
	method iniciar (){
		position =self.posicionInicial()
		game.onTick(velocidad,"moverAuto",{self.mover(direccion)})
	}
	
	method posicionInicial() = game.at(1,1)
	
	method mover(_direccion){
		if (_direccion == "arriba"){ position.up(velocidad)}
		
		if (_direccion == "abajo"){ position.down(velocidad)}
		
		if (_direccion == "izquierda"){ position.left(velocidad)}
		
		if (_direccion == "derecha"){ position.right(velocidad)}
	}
	
}



object bala{
	//var direccion
	//var property  imagen
	//const property velocidad
	//var property position
	//var vivo = true 
	method mover(){}
	
	method colicion(){}
}

object tanke1  // recive auto
	{
	method precionatecla()
	
	method disparar(){}
	
}


object tankeautomatico  // recive auto
	{
	method movimiento ranmdom()
	
	method disparar_ random()
	
}


object pared(){
		//var property  imagen
		//var property position
		//var vivo = true 
}


object pared()2{
		//var property  imagen
		//var property position
		//const vivo = const true ( o algo asi)
}



// funcion  colicion (objeto1, objeto 2)
	 // es colicion pared auto?
	 		// permite movimiento (lo hace el objeto?)
	 // es colicion bala algo?
			// borra objetos	(lo hace el objeto?)





//const tanke = new Auto (direccion = "arriba", imagen = "tank1.png", velocidad = 1, position = (1,1))
//