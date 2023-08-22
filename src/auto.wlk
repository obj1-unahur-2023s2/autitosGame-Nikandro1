import wollok.game.*



object corsa {
	// definimos los atributos para imagen y posición de nuestro elemento
	var position 

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = "autitoRojo.png"
	method position() = position
	method position(nuevaPosicion) { position = nuevaPosicion }
	method arriba() {
		position = position.up(1) // sube la posicion un lugar
	}
	method abajo(){
		if (position.x() == 0) {
			position = position.down(1)
		}
		else {
			position = game.at(position.x(), game.height())	
		}
		
	}
	method derecha(){
		if (position.x() < game.width()-1){
			position = position.right(1)
		}
		else{
			position = game.at(0, position.y())	
		}
		
	}
	method izquierda(){
		position = position.left(1)
	}
}
