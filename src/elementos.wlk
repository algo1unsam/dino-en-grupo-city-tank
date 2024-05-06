import factories.*
import visuales.*
import nivel.*
import wollok.game.*


class Ingrediente inherits Visual{
	var property score = 0
	var property monedas
	    
	method colisionadoPor(personaje) {
		if (personaje.tienePremio()){ 
			personaje.agarrarIngrediente(self)
		 	score += 1
		 	personaje.cuantasMonedas()
	   }
	   else{
	      	game.say(personaje, "¡Me falta la espátula!")
	   }
 	nivel.ubicarAleatoriamente(self)
	}

	method restarScore(_score){
		score -= _score
	}
}
const caja = new Ingrediente(image = "caja.png",monedas = 100) 
const cajarota = new Ingrediente(image = "cajarota.png",monedas = 300) 

 


object enemigo inherits Visual(position = new Position(x=10,y=3), image = "enemigo.png"){
	var formulaKangreBurger = 0
	method colisionadoPor(personaje) {
		if (kangreburger.score() > 0){
	 		kangreburger.restarScore(1)
	 		formulaKangreBurger += 1
	    	game.say(self, "He atrapado la fórmula! Muajaja")							 	
	 	}
	 	else{
			game.say(self, "No tenés hamburguesas hechas, esta vez safaste!")
 		}
	nivel.ubicarAleatoriamente(self)		
	}

	method score() = formulaKangreBurger
	         
}

object kangreburger inherits Visual(image = "kangreburger.png"){
	var property ingredientes = [caja,cajarota]
	method score(){
		return ingredientes.min{ing => ing.score()}.score()
	}
	method restarScore(cant){
		ingredientes.forEach{ing => ing.restarScore(cant)}
	}
}

object premio inherits Visual(image= "premio.png", position = new Position(x=3,y=2)) {

	method colisionadoPor(personaje) {
		personaje.tienePremio(true) 
		game.say(personaje, "Premio")
		game.removeVisual(self)
	}
}



object bala inherits Visual(image= "bala.png", position = new Position(x=3,y=2)) {

	method colisionadoPor(personaje) {
		
	 	
	 	
	}
}