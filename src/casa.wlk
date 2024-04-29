import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentas.*

object casaDePepeYJulian {
	const cosas = [heladera, tiraDeAsado, cama]
	var gastos=0
	
	var property cuenta = cuentaBancaria
	
	method gastos()=gastos//retorna los gastos por compras hasta el momento
	
	method comprarCosa(cosa){
		cosas.add(cosa)
		cuenta.extraer(cosa.precio())
		gastos+=cosa.precio()
	}
	
	method cantidadDeCosasCompradas()=cosas.size()
	
	method tieneComida() = cosas.any({cosa=>cosa.esComida()})
	
	method vieneDEEquiparse()=cosas.last().esElectrodomestico() or cosas.last().precio()>50000 //no estoy segur si seria mas eficiente usar una variable auxiliar y almacenas 'cosa.lasY()'
	
	method esDerrochona() = cosas.sum({cosa=>cosa.precio()}) >= 90000
	
	method compraMasCara() {
			const precioMaximo=cosas.max({cosa=>cosa.precio()}) //lo calculo previamente para no tener que recorrer tantas veces la lista
			return cosas.find({cosa=>cosa.precio()==precioMaximo})
	}
	
	method electrodomesticosComprados() = cosas.filter({cosa=>cosa.esElectrodomestico()})
	
	method malaEpoca() = cosas.all({cosa=>cosa.esComida()})
	
	method queFaltaComprar(lista) = (lista.asSet().difference(cosas.asSet())).asList()
	
	method faltaComida() = cosas.count({cosa=>cosa.esComida()})<2
	
	method gastar(importe){
		cuenta.extraer(importe)
	}
	
	method dineroDisponible()=cuenta.saldo()
 }
