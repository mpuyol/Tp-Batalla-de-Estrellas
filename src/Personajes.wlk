import Combate.*

object pamela {

	var energia = 6000
	const gritoDeVictoria = "Acá pasó la Pamela"
	var objetos = [ "algodon", "aguaOxigenada", "cintaDePapel", "cintaDePapel" ]

	method objetos() = objetos
	
	method gritoDeVictoria() = gritoDeVictoria
	
	method energia() = energia

	method ganarEnergia(unaCantidad) {
		energia = energia + unaCantidad
	}

	method perderEnergia(unaCantidad) {
		energia = energia - unaCantidad
	}

	method lucharManoAMano(unRival) {
		self.ganarEnergia(400)
	}

	method objetos(unaLista) {
		objetos = unaLista
	}

	method perderUltimoObjeto() = objetos.remove(objetos.last())
	

	method ultimoObjeto() = objetos.last()

	method cantidadDeObjetos() = objetos.size()

	method lucharContraEquipo(unEquipo) {
		unEquipo.forEach({ personaje => self.lucharManoAMano(personaje)})
	}

}

object pocardo {

	var energia = 5600
	const gritoDeVictoria = "¡Siente el poder de la música!"
	var objetos = [ "guitarra", "curitas", "cotonetes" ]

	method objetos() = objetos
	
	method gritoDeVictoria() = gritoDeVictoria
	
	method energia() = energia

	method ganarEnergia(unaCantidad) {
		energia = energia + unaCantidad
	}

	method perderEnergia(unaCantidad) {
		energia = energia - unaCantidad
	}

	method lucharManoAMano(unRival) {
		self.ganarEnergia(500)
	}

	method objetos(unaLista) {
		objetos = unaLista
	}

	method perderUltimoObjeto() = objetos.remove(objetos.last())

	method ultimoObjeto() = objetos.last()

	method cantidadDeObjetos() = objetos.size()

	method lucharContraEquipo(unEquipo) {
		unEquipo.forEach({ personaje => self.lucharManoAMano(personaje)})
	}

}

object tulipan {

	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	var objetos = [ "rastrillo", "maceta", "maceta", "manguera" ]

	method objetos() = objetos
	
	method gritoDeVictoria() = gritoDeVictoria

	method energia() = energia

	method perderEnergia(unaCantidad) {
		energia = energia - unaCantidad
	}

	method ultimoObjeto() = objetos.last()

	method objetos(unaLista) {
		objetos = unaLista
	}

	method lucharManoAMano(unRival) {
		unRival.perderEnergia(unRival.energia() / 2)
	}

	method cantidadDeObjetos() = objetos.size()

	method perderUltimoObjeto() = objetos.remove(objetos.last())

	method lucharContraEquipo(unEquipo) {
		unEquipo.forEach({ personaje => self.lucharManoAMano(personaje)})
	}

}

object toro {

	var energia = 7800
	const gritoDeVictoria = "No se metan con el toro"
	var botin = #{}

	method energia() = energia
	
	method gritoDeVictoria() = gritoDeVictoria
	
	method botin() = botin

	method perderEnergia(unaCantidad) {
		energia = energia - unaCantidad
	}

	method robarUltimoObjeto(unRival) {
		botin.add(unRival.ultimoObjeto())
		unRival.perderUltimoObjeto()
	}

	method lucharManoAMano(unRival) {
		unRival.perderEnergia(200 * unRival.cantidadDeObjetos())
		self.robarUltimoObjeto(unRival)
	}

	method lucharContraEquipo(unEquipo) {
		unEquipo.forEach({ personaje => self.lucharManoAMano(personaje)})
	}

}

