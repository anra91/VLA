//
//  ViewController.swift
//  VLA
//
//  Created by Andres Ramirez Restrepo on 12/5/15.
//  Copyright © 2015 vitalidadla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //: Playground - noun: a place where people can play
        
        /*
        Programa un playground que evalúe un rango de números en base a 4 reglas de impresión.
        
        Generar un rango de 0 a 100, incluye el número 100 en el rango.
        
        Tienes que iterar el rango completo, utilizando la sentencia
        for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
        Al evaluar cada número debes aplicar las siguientes reglas:
        - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
        - Si el número es par, imprime: # el número + “par!!!”
        - Si el número es impar, imprime: # el número + “impar!!!”
        - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
        */
        
        // Crear variable Numeros 1-100
        let numeros = 1...100
        // Crear variable multiplos de 5
        var numero5 = 5
        var numerosMultiplos5 = [5]
        while numero5 < 100 {
            numero5 = numero5 + 5
            numerosMultiplos5.append(numero5)
        }
        print (numerosMultiplos5)
        // Crear variable multiplos de 2 (Pares)
        var numero2 = 2
        var numerosMultiplos2 = [2]
        while numero2 < 100 {
            numero2 = numero2 + 2
            numerosMultiplos2.append(numero2)
        }
        print (numerosMultiplos2)
        // Crear variable Impares
        var numero1 = 1
        var numerosMultiplos1 = [1]
        while numero1 < 99 {
            numero1 = numero1 + 2
            numerosMultiplos1.append(numero1)
        }
        print (numerosMultiplos1)
        
        ////////////////////////////////////////
        ////////////////////////////////////////
        // Forma Rapida
        ////////////////////////////////////////
        ////////////////////////////////////////
        for n in numeros {
            // Regla 1
            if numerosMultiplos5.contains(n){
                print ("# \(n) Bingo!!")
            } else if numerosMultiplos2.contains(n){
                print ("# \(n) Par!!")
            } else if numerosMultiplos1.contains(n){
                print ("# \(n) Impar!!")
            } else if n > 29 && n < 41 {
                print ("# \(n) Viva Swift!!")
            }
        }
        
        ////////////////////////////////////////
        ////////////////////////////////////////
        // Forma Medio Compleja
        ////////////////////////////////////////
        ////////////////////////////////////////
        for n in numeros {
            // Regla 1
            if numerosMultiplos5.contains(n){
                print ("# \(n) Bingo!!")
            }
            // Regla 2
            if numerosMultiplos2.contains(n){
                print ("# \(n) Par!!")
            }
            // Regla 3
            if numerosMultiplos1.contains(n){
                print ("# \(n) Impar!!")
            }
            // Regla 4:
            if n > 29 && n < 41 {
                print ("# \(n) Viva Swift!!")
            }
        }
        
        ////////////////////////////////////////
        ////////////////////////////////////////
        // Forma Compleja
        ////////////////////////////////////////
        ////////////////////////////////////////
        for n in numeros {
            
            var multi5 = ""
            var multi2 = ""
            var multi1 = ""
            var rango30a40 = ""
            
            let n_ = "# \(n)"
            // Regla 1
            if numerosMultiplos5.contains(n){
                multi5 = " Bingo!!"
            }
            // Regla 2
            if numerosMultiplos2.contains(n){
                multi2 = " Par!!"
            }
            // Regla 3
            if numerosMultiplos1.contains(n){
                multi1 = " Impar!!!"
            }
            // Regla 4:
            if n > 29 && n < 41 {
                rango30a40 = " Viva Swift!!!"
            }
            print(n_ + multi5 + multi2 + multi1 + rango30a40)
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

