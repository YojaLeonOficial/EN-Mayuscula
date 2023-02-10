import UIKit

/*
 * Reto #11
 * ELIMINANDO CARACTERES
 * Fecha publicación enunciado: 14/03/22
 * Fecha publicación resolución: 21/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba dos cadenas como parámetro (str1, str2) e imprima otras dos cadenas como salida (out1, out2).
 * - out1 contendrá todos los caracteres presentes en la str1 pero NO estén presentes en str2.
 * - out2 contendrá todos los caracteres presentes en la str2 pero NO estén presentes en str1.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


func main() {
    
    print("out1: \(borrandoCaracteres (str1: "yoja", str2: "Leon"))")
    print("out1: \(borrandoCaracteres (str1: "Leon", str2: "yoja"))")
}

private func borrandoCaracteres (str1: String, str2: String) -> String {
    
    var stack = ""
    
    str1.lowercased().forEach { character in
        if !str2.lowercased().contains(character) {
            stack += String(character)
            
        }
    }

/*
    for character in str1.lowercased() {
        if !str2.lowercased().contains(character) {
            stack += String(character)
            
        }
    }
*/
    return stack
    
}

main()
