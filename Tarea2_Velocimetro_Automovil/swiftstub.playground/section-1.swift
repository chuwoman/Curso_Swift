import Foundation

/*

VELOCÍMETRO DE UN AUTOMÓVIL DIGITAL

Crea un playground que contenga los elementos para representar un velocímetro de un automóvil.

*/


/*
Enumeración: Velocidades, sus valores serán de tipo Int.Valores:
    - Apagado = 0, representa la velocidad 0.
    - VelocidadBaja = 20, representa una velocidad de 20km por hora.
    - VelocidadMedia = 50, representa una velocidad de 50km por hora.
    - VelocidadAlta = 120, representa una velocidad de 120km por hora.
*/
enum Velocidades : Int {
   case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
   
   // inicializador que recibe un velocidad
   init ( velocidadInicial : Velocidades){
       self = velocidadInicial
   }
}

// Clase Auto
class Auto {
    
    //Instancia de la enumeración Velocidade
    var velocidad : Velocidades
    
    //Debe iniciar en Apagado
    init(){
        self.velocidad = Velocidades (velocidadInicial : Velocidades.Apagado)
    }
    
    //Cambia el valor de velocidad a la siguiente velocidad gradual
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        switch self.velocidad {
        
            // Apagado cambia a VelocidadBaja
    	    case Velocidades.Apagado: 
    	 
    	        self.velocidad = Velocidades.VelocidadBaja
    	        return (Velocidades.Apagado.rawValue , "Apagado")
    	 
    	    // VelocidadBaja cambia a VelocidadMedia
    	    case Velocidades.VelocidadBaja: 
    	 
    	        self.velocidad = Velocidades.VelocidadMedia
    	        return (Velocidades.VelocidadBaja.rawValue , "Velocidad Baja")
    	 
    	 
    	    // VelocidadMedia cambia a VelocidadAlta
    	    case Velocidades.VelocidadMedia: 
    	 
    	        self.velocidad = Velocidades.VelocidadAlta
    	        return (Velocidades.VelocidadMedia.rawValue , "Velocidad Media")
    	    
    	    // VelocidadAlta cambia a VelocidadMedia
    	    case Velocidades.VelocidadAlta: 
    	 
    	        self.velocidad = Velocidades.VelocidadMedia
    	        return (Velocidades.VelocidadAlta.rawValue , "Velocidad Alta")
        }
        
        
    }
    
    
}

// Inicializamos el objeto auto
var auto = Auto()

// Ejecutamos la llamada a la funcion "cambioDeVelocidad" 20 veces
for var i = 0; i<=20; i++ {

    print("\(auto.cambioDeVelocidad ())\t")
    

}
