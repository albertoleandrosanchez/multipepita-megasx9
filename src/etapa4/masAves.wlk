
import pepita.*
import comidas.*
import roque.*

object pepon {
	var energia = 0
	
	method comer(cosa, cuanto) {  energia += (cosa.energiaPorGramo() * cuanto) / 2 }  
	method volar(kms) {  energia -= (kms/2)+1 }
	method haceLoQueQuieras() { self.volar(1) }
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kilometros
	var gramos
	
	method comer(cosa, cuanto) {  gramos += cosa.energiaPorGramo()*cuanto }  
	method volar(kms) {  kilometros += kms }
	
	method kmsRecorridos(){ return kilometros}
	method gramosIngeridos(){return gramos}
	method haceLoQueQuieras() { }  
}
