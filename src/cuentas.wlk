object cuentaCorriente {
	var property saldo=0
	method saldo()=saldo
	
	method limiteExtraccion()=saldo
	
	method depositar(importe){
		saldo+=importe
	}
	
	method extraer(importe){
		saldo-=importe//no chequeo si la cuenta tiene saldo negativo
	}	
}

object cuentaConGastos{
	var property saldo=0
	
	method saldo()=saldo
	
	method limiteExtraccion()=saldo-200
	
	method depositar(importe){
		saldo+=importe-200
	}
	
	method extraer(importe){
		saldo-=(importe+200).max(importe*1.02)
	}
}

object cuentaCombinada{
	var property cuentaPrimaria
	var property cuentaSecundaria 
	
	method depositar(importe){
		cuentaPrimaria.depositar(importe)
	}
	
	method extraer(importe){
		if (cuentaPrimaria.limiteExtraccion()>importe) {cuentaPrimaria.extraer(importe)} else {cuentaSecundaria.extraer(importe)}
	}
	
	method extraerDesafio(importe){
		cuentaSecundaria.extraer(0.max(importe-cuentaPrimaria.limiteExtraccion()))//primero veo si necesito extraer de la secundaria para no modificar el limite de la primaria antes de modificar la secundaria. Ademas no me importa si la secundaria tiene saldo negativo
		cuentaPrimaria.extraer(importe.min(cuentaPrimaria.limiteExtraccion()))
	}
	
	method saldo()=cuentaPrimaria.saldo()+cuentaSecundaria.saldo()
}
