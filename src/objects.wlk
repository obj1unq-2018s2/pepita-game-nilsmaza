import comidas.*

object roque {
	var property posicion = game.at(1,7)
	var property almacenamiento = 0
	var coord = game.at(1.randomUpTo(10),1.randomUpTo(10))
	
	method imagen () = "pepona.png"
	

	method guardarComida(comida){ 
		 if ( self.enAlmac() == 0 ){
			game.removeVisual(comida)
			almacenamiento = comida
		}
		else{
		 if ( self.enAlmac() != null )
		 	game.addVisualIn(self.enAlmac(), coord)
			game.removeVisual(comida)
			almacenamiento = comida
		}
}

	method enAlmac(){
		return almacenamiento
	}

		method alimentarA(alguien) {
			alguien.come(self.enAlmac())
			game.addVisualIn(almacenamiento, game.at(1.randomUpTo(10),1.randomUpTo(10)))
			almacenamiento = 0
		}
	}
//	cuando la comida cambia de lugar no la puedo volver a guardar en almacenamiento
