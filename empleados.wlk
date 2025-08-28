//Escribir aqui los objetos
object gimenez {
    var fondo = 300000

    method fondoActual() = fondo
    method pagarSueldo(empleado){
        
        fondo -= empleado.sueldoACobrar()
        empleado.cobrarSueldo()
    }
}
object galvan {
    var sueldo = 0
    var sueldoACobrar = 0
    var deuda = 0   
    
    method deuda() = deuda
    method sueldoEnMano() = sueldo
    method sueldoACobrar() = sueldoACobrar
    
    method actualizarSueldo(monto) {
        sueldoACobrar = monto
    }
    method cobrarSueldo() {
        if (sueldoACobrar >= deuda) {
            sueldo += sueldoACobrar - deuda
            deuda = 0 
            sueldoACobrar = 0
        }
        else {
            deuda -= sueldoACobrar
            sueldoACobrar = 0
            }
    }

    method gastar(monto) {
        if (sueldo >= monto) {
            sueldo -= monto
        }
        else {
            deuda += monto - sueldo
            sueldo = 0
        }
        
    }
}

object baigorria {
    var sueldo = 0
    var sueldoACobrar = 0
    var empanadasVendidas = 0

    method sueldoACobrar() = sueldoACobrar
    method sueldoEnMano() = sueldo
    method cantidadEmpanadas() = empanadasVendidas
    
    method venderEmpanadas(cantidad) {
        empanadasVendidas += cantidad
        sueldoACobrar = empanadasVendidas * 15
    }
    method cobrarSueldo() {
        sueldo += sueldoACobrar
        empanadasVendidas = 0
        sueldoACobrar = 0
    }
}
