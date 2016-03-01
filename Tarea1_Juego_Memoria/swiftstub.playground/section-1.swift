import Foundation

/*

JUEGO DE MEMORIA

Programa un playground que evalúe un rango de números en base a 4 reglas de impresión.
Generar un rango de 0 a 100, incluye el número 100 en el rango.
Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
Al evaluar cada número debes aplicar las siguientes reglas:
          - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!” 
          - Si el número es par, imprime: # el número + “par!!!”
          - Si el número es impar, imprime: # el número + “impar!!!”
          - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
Debes de usar la interpolación de variables para realizar la impresión de cada número.
*/

var cadena=""

for var i = 1; i<=100; i++ {
    cadena=""
    // Condición número divisible entre 5
    if((i%5)==0){
    cadena+="# \(i) Bingo!!! "
    }
    // Condición número par
    if((i%2)==0){
       cadena+="# \(i) Par!!! "
    }// Condición número impar
    else{
        cadena+="# \(i) Impar!!! "
    }
    // Condición número dentro [30 al 40]
    if(i>=30&&i<=40){
        cadena+="# \(i) Viva Swift!!! "
    }
print("\(cadena)\t")

}
