//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    // valores de la ENUMERACION
    case Apagado = 0, velBaja = 20, velMedia = 50, velAlta=120
    
    // inicializador de la ENUMERACION
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}


class Auto
{
    var velocidad : Velocidades
    
    // inicializador de la clase
    init()
    {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( velocidad : Int, string : String)
    {
        
            if (self.velocidad.rawValue == 0)
            {
                return (Velocidades.Apagado.rawValue,"Apagado" )
               
            }
            else if (self.velocidad.rawValue == 20)
            {
                return (Velocidades.velBaja.rawValue, "Velocidad Baja")
               
            }
            else if (self.velocidad.rawValue == 50)
            {
                return (Velocidades.velMedia.rawValue, "Velocidad Media")
               
            }
            else if (self.velocidad.rawValue == 120)
            {
                return (Velocidades.velAlta.rawValue , "Velocidad Alta")
            
            }
        
        // se regresa una tupla de tipo Int y String
        return ( 0 , "" )
    }
    
}

// velocidades de prueba
var velocidades = [Velocidades.Apagado, Velocidades.velBaja, Velocidades.velMedia,
                   Velocidades.velAlta, Velocidades.velMedia]
// variable de clases AUTO
var auto = Auto()



for (var j = 0 ; j < 20 ; j++)
{
    for (var i = 0 ; i < 5 ; i = i + 1)
    {
        auto.velocidad = velocidades[i]
    
        var resultado = auto.cambioDeVelocidad()

        print("\(resultado.velocidad) , \(resultado.string)")
    }
}
