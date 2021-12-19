import example.*

object uruguay {
	
	const property costo = 1
	
}

object algarrobo {
	
	const property costo = 0.8
	
}

const factura_cliente1 = new Factura(
	mes = 6,
	abonoBasico = 50,
	llamadas = [llamada_1,llamada_2,llamada_3]
)

const factura_cliente2 = new Factura(
	mes = 6,
	abonoBasico = 40,
	llamadas = [llamada_4]
)

const factura_cliente3 = new Factura(
	mes = 6,
	abonoBasico = 30,
	llamadas = []
)




const llamada_1 = new Local (
	dia = new Date(day = 29, month = 6, year = 2021),
	horaDeInicio = 9,
	duracion = 10	
)

const llamada_2 = new Local (
	dia = new Date(day = 6, month = 6, year = 2021),
	horaDeInicio = 21,
	duracion = 7	
)

const llamada_3 = new Nacional (
	dia = new Date(day = 12, month = 6, year = 2021),
	horaDeInicio = 10,
	duracion = 30,	
	localidad = algarrobo
)

const llamada_4 = new Internacional (
	dia = new Date(day = 13, month = 6, year = 2021),
	horaDeInicio = 11,
	duracion = 20,
	pais = uruguay	
	
)