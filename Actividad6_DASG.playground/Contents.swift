import UIKit

// Eleva el anterior numero a la potencia del siguiente
infix operator ^^

func ^^ (a: Int, b: Int) -> Int
{
    return a ^ b
}

// Ordena el siguiente arreglo de enteros de menor a mayor
prefix operator ***

prefix func *** (arreglo: Array<Int>) -> Array<Int>
{
    var newArray: Array<Int> = arreglo
    var a: Int, b: Int
    var cambios: Bool = true
    while(cambios) {
        cambios = false
        for (n, number) in arreglo.enumerated()
        {
            // print(number)
            if (!newArray.indices.contains(n + 1))
            {
                break
            }
            
            a = newArray[n]
            b = newArray[n + 1]
            if(a > b)
            {
                newArray[n] = b
                newArray[n + 1] = a
                cambios = true
            }
        }
    }
    return newArray
}

var cantidades = ***[2,5,3,4]
print(cantidades)

struct Cantidad
{
    var valores:[Int]
    init (v:[Int])
    {
        self.valores = v
    }

    subscript(idx: Int) -> Int
    {
        get
        {
            return (valores[idx] * 2) - idx
        }

        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

var v1 = Cantidad(v: cantidades)
print(v1[3])

// No entendi lo del enemigo

let valores = ["A":1,"B":2,"C":3]
func ExisteValor (valor: Int)
{
    let variable = valores.contains {
        key, value in //<- `value` is inferred as `Int`
        value == valor //<- true when value > 100, false otherwise
    }
    
    guard variable else {
        print("No Existe")
        return
    }
    print("Existe")
}

ExisteValor(valor: 5)


