import wollok.game.*
import claseAuto.*


object juego_city {

	
	method configurar(){
		game.width(12)
		game.height(8)
		game.title("CITY TANK")
		game.addVisual(fondo)
		game.addVisual(cactus)
		game.addVisual(dino)
		game.addVisual(reloj)
	
		keyboard.space().onPressDo{ self.jugar()}
		
		game.onCollideDo(dino,{ obstaculo => obstaculo.chocar()})
		
	} 
	
	method iniciar(){
		dino.iniciar()
		reloj.iniciar()
		cactus.iniciar()
	}
	
	
	
}


fondo()