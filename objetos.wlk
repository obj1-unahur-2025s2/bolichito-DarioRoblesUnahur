object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800  
}

object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}

object muneco {

  var pesoActual = 10

  method peso() = valorPeso
  method color() = celeste
  method material() = vidrio

  method cambiarPeso(pesoNuevo) {
    pesoActual = pesoNuevo
  } 
}

object placa {
  var pesoActual = 10
  var colorActual = pardo

  method material() = cobre
  method color() = colorActual
  method peso() = pesoActual

  method cambiarColor(colorNuevo) {
    colorActual = colorNuevo
  } 
  method cambiarPeso(pesoNuevo) {
    pesoActual = pesoNuevo
  }
}

object bolichito {
  var mostrador = remera
  var vidriera = pelota

  method cambiarVidriera(cosaNueva) {
     vidriera = cosaNueva
   }
  method cambiarMostrador(cosaNueva) {
     mostrador = cosaNueva
   }

  method verMostrador() = mostrador
  method verVidriera() = vidriera

  method esBrillante() = vidriera.material().esBrillante() and mostrador.material().esBrillante()
  method esMonocromatico() = vidriera.color() == mostrador.color()
  method esEquilibrado() = vidriera.peso() < mostrador.peso()
  method esDeColor(unColor) = unColor == vidriera.color() or unColor == mostrador.color()
  method puedeMejorar() = self.esMonocromatico() and self.esEquilibrado()
  method puedeOfrecerleA(unaPersona) = unaPersona.leGusta(vidriera) or unaPersona.leGusta(mostrador)
}

object rosa {
  method leGusta(unaCosa) = unaCosa.peso() <= 2000
}

object estefania {
  method leGusta(unaCosa) = unaCosa.color().esFuerte()
}

object luisa {
  method leGusta(unaCosa) = unaCosa.material().esBrillante()
}

object juan {
  method leGusta(unaCosa) = not unaCosa.color().esFuerte() or unaCosa.peso().between(1200, 1800)
}

object rojo {
  method esFuerte() = true 
}

object verde {
  method esFuerte() = true 
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
}

object cobre {
  method esBrillante() = true 
}

object vidrio {
  method esBrillante() = true 
}

object lino {
  method esBrillante() = false
}

object madera {
  method esBrillante() = false
}

object cuero {
  method esBrillante() = false 
}
