import ciudades.*
import comidas.*
import objects.*

object pepita {
	var property energia = 90
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	
	method imagen(){ if(self.energia() < 100 ) return "pepita.png"
					else  return "pepita-gorda-raw.png"
					}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
			game.say(self, "ya estoy en"+ unaCiudad +"!!")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	
	method comeloQueHayEn(comida) {
		if(energia > 0)
			self.move(comida.posicion())
			self.come(comida)
			game.removeVisual(comida)
			}
}

