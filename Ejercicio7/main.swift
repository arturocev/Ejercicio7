import Foundation

// EJERCICIO 7

var numeros = [Int]()
while numeros.count != 5
{
    print("Porfavor, escribe un número: ")
    let numero = readLine()!
    if numero.isEmpty
    {
        print("ERROR: no has introducido nada")
    }
    else if numero.first?.isNumber == false
    {
        print("ERROR: no has introducido un número")
    }
    else if numero.count > 1
    {
        print("ERROR: debes introducir solo un valor")
    } else
    {
        let numero2: Int = Int(numero)!
        numeros.append(numero2)
    }
}
let suma = numeros.reduce(0, {total, numero in
    total + numero
})

let media = suma/5
print("La media es", media)


print("Escribe una frase: ")
var frase : String = readLine()!

var palabras = frase.split(separator:" ")
var frase2 = ""
palabras.map {
    var palabra = $0
    if palabra.first == "j"
    {
        palabra = "j****"
    }
    else if palabra.first == "p"
    {
        palabra = "p****"
    }
    else if palabra.first == "m"
    {
        palabra = "m****"
    }
    if frase2.count == 0 {
        frase2 += palabra
    } else {
        frase2 += " " + palabra
    }
}
print(frase2)
