class Llamada {
	
	const property dia
	const property horaDeInicio
	const property duracion
    method costo()
}

class Local inherits Llamada {
	
	method esDiadeSemana(unDia) = unDia.dayOfWeek() != sunday || unDia.dayOfWeek() != saturday
	override method costo(){
		
		if(self.esDiadeSemana(dia) && horaDeInicio.between(8,20)){
		
				return duracion * 0.20
			
			}
			
		else{
			return duracion * 0.10
		}
		
	}
}

class Nacional inherits Llamada {
   
   const property localidad
   override method costo() = duracion * localidad.costo() 
        
	
}
class Internacional inherits Llamada {
      
   const property pais
   override method costo() = duracion * pais.costo()   
	
}


class Factura {
	
	const property mes
	
	const property abonoBasico
	
	const property llamadas = []
	
	method abonoTotal() = abonoBasico + llamadas.sum{llamada => llamada.costo()}
	
}





