import empleados.*
import vehiculos.*

class Dependencia {
	const vehiculos = []
	const empleados = []
	const listaPedidos = []
	method agregarPedido(pedido){
		return listaPedidos.add(pedido)
	}
	method quitarPedido(pedido){
		return listaPedidos.remove(pedido)
	}
    method agregarEmpleado(empleado){
        return empleados.add(empleado)
    }

    method cantidadDeEmpleados(){
        return empleados.size()
    }
	method agregarAFlota(rodado){
		return vehiculos.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		return vehiculos.remove(rodado)
	}
	
	method pesoTotalFlota(){
		return vehiculos.sum({vehiculo => vehiculo.peso()})
	}
	
	method estaBienEquipada(){
		return vehiculos.size() >= 3 and 
		vehiculos.all({vehiculo => vehiculo.velocidadMaxima() >= 100})
	}
	
	method capacidadTotalEnColor(color){
		return vehiculos.filter({vehiculo => vehiculo.color() == color})
		.sum({vehiculo => vehiculo.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		return vehiculos.max({vehiculo => vehiculo.velocidadMaxima()}).color()
	}
	method capacidadFaltante(){
		return self.cantidadDeEmpleados() - vehiculos.sum({v=>v.capacidad()})
	}
	method esGrande(){
		return self.cantidadDeEmpleados() >= 40 and vehiculos.size() >= 5 
	}
	method totalDePasajerosEnPedidos(){
		return listaPedidos.sum({p=>p.cantidadPasajeros()})
	}
	method vehiculosPuedenSatisfacerElPedido(){
		return listaPedidos.filter({pedido=> vehiculos.all({vehiculo =>not pedido.puedeSatisfacerPedido(vehiculo)})})
	}
	method esColorIncompatible(unColor){
		return listaPedidos.all({p=>p.coloresIncompatibles() == unColor})
	}
	method relajarPedidos(){
		return listaPedidos.forEach({p=>p.relajar()})
	}
}

class Empleados{
    var property nombre = ""
}
class Pedidos{
	var property kms
	var property horas
	var property cantPasajeros
	var property coloresIncompatibles = #{}
	method agregarColoresIncompatibles(color){
		return coloresIncompatibles.add(color)
	}
	method velRequerida(){
		return kms / horas
	}
	method puedeSatisfacerPedido(auto){
		return 
		auto.velocidadMaxima() >= (self.velRequerida()+10)
		and auto.capacidad() >= cantPasajeros 
		and not coloresIncompatibles.contains(auto.color())
	}
	method relajar(){}
	
}