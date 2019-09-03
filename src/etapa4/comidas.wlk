
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() {return 20}
	// completar
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() {return 9}
	// completar
}

// despues, agregar mijo y canelones

object mijo {
	/*Si el mijo está mojado da 15 joules por gramo, si no da 20. 
Hacer que el mijo entienda los mensajes `mojarse()` y `secarse()`. */
	var jules = 0

	method energiaPorGramo() {return jules}

	method mojarse() { jules = 15}

	method secarse() {
		if (jules==15)
		{jules = 20}
	}
}

object canelones {
	/*Los canelones dan 20 joules por gramo de base. Si tienen salsa,
	 *  sumar 5 joules. Si tienen queso, sumar 7.
	Entonces tenemos: sin nada 20 joules, con salsa 25, con queso 27, con salsa y queso 32.

	Debe ser posible poner o sacar salsa, y*  poner o sacar queso, enviándole mensajes 
	* al objeto que representa a los canelones. Se puede hacer agregando 4 métodos, uno
	*  por cada una de las cuatro opciones posibles. */
	var jules = 20
	
	method ponerSalsa() {
		if (jules==20 or jules==27){
			jules +=5
		}
	}
	method sacarSalsa(){
		if(jules==25 or jules==32){
			jules-=5
		}
	}
	method ponerQueso(){
		if (jules==20 or jules==25){
			jules+=7
		}
	}
	method sacarQueso(){
		if (jules==27 or jules==32){
			jules-=7
		}
	}
		
	method energiaPorGramo(){
		return jules
	}
}

object canelones_alt {
	
	var tieneQueso = false
	var tieneSalsa = false
	
	method ponerSalsa(){ tieneSalsa = true}
	method sacarSalsa(){ tieneSalsa = false}
	method ponerQueso(){ tieneQueso = true}
	method sacarQueso(){ tieneQueso = false}
		
	method energiaPorGramo(){
		if (not tieneSalsa and not tieneQueso){
			return 20
			}
		else if (tieneSalsa and not tieneQueso){
			return 25
		}
		else if (not tieneSalsa and tieneQueso){
			return 27
		}
		//los else if siempre terminan con else y no tienen condicion.
		else {
			return 32
		}
}
}
}