import Personajes.*

object combate2v2 {

	const equipo1 = [ toro, pocardo ]
	const equipo2 = [ pamela, tulipan ]

	method equipo1() = equipo1

	method equipo2() = equipo2

	method atacar() {
		self.pelearEquipos(equipo1, equipo2)
		self.pelearEquipos(equipo2, equipo1)
	}

	method pelearEquipos(primerEquipo, segundoEquipo) {
		primerEquipo.forEach({ personaje => personaje.lucharContraEquipo(segundoEquipo)})
	}

	method energiaFinalDelEquipo(unEquipo) {
		
		return unEquipo.map({ personaje => personaje.energia() }).sum()
	}

	method equipoQueGana() {
		var equipoGanador
		self.atacar()
		if (self.energiaFinalDelEquipo(equipo1) > self.energiaFinalDelEquipo(equipo2)) {
			equipoGanador = equipo1
		} else {
			equipoGanador = equipo2
		}
		return equipoGanador
	}

	method gritoGanador() {
		const equipoGanador = self.equipoQueGana()
		return equipoGanador.map({ personaje => personaje.gritoDeVictoria() })
	}

}

