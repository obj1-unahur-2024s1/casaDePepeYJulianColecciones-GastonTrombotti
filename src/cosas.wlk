// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method puedeSerPlato()=false
	method puedeSerAderezo()=false
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }
	method puedeSerPlato()=false
	method puedeSerAderezo()=false	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method puedeSerPlato()=true
	method puedeSerAderezo()=false	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method puedeSerPlato()=true
	method puedeSerAderezo()=false	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
	method puedeSerPlato()=false
	method puedeSerAderezo()=false	
}

object kiloDeMilanesas{
	method precio()=2600
	method esComida()=true
	method esElectrodomestico()=false
	method puedeSerPlato()=true
	method puedeSerAderezo()=false
}

object botellaSalsaDeTomates{
	method precio()=900
	method esComida()=true
	method esElectrodomestico()=false
	method puedeSerPlato()=false
	method puedeSerAderezo()=true
}

object microondas{
	method precio()=42000
	method esComida()=false
	method esElectrodomestico()=true
	method puedeSerPlato()=false
	method puedeSerAderezo()=false
}

object kiloDeCebollas{
	method precio()=250
	method esComida()=true
	method esElectrodomestico()=false
	method puedeSerPlato()=false
	method puedeSerAderezo()=true
}

object dolar{
	var property precioDeVenta=1000
}

object compu{
	method precio()=dolar.precioDeVenta()*500
}

object packComida{
	var plato
	var aderezo
	
	method plato()=plato
	method aderezo()=aderezo
	
	method plato(cosa){
		if(cosa.puedeSerPlato()){ plato=cosa}
	}
	
	method aderezo(cosa){
		if(cosa.puedeSerAderezo()){aderezo=cosa}
	}
	
	method precio()=plato.precio()+aderezo.precio()
	method esComida()=true
	method esElectrodomestico()=false
	method puedeSerPlato()=false
	method puedeSerAderezo()=false
}

