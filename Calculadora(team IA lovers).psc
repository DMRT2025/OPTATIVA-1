Algoritmo calculadora_avanzada
//cada parte 
	Definir opcionPrincipal Como Entero //aqui se almacena la opcion que se utilizara en el menu
	opcionPrincipal<-0
		
		Mientras opcionPrincipal <> 5 Hacer //cliclo que hace que el codigo se repita cuantas veces quiera el usuario
			Limpiar Pantalla
			Escribir "=================================="
			Escribir "       MENÚ PRINCIPAL"
			Escribir "=================================="
			Escribir "1) Calculadora Básica (+ - * /)"
			Escribir "2) Calculadora de Áreas"
			Escribir "3) Estadística Básica"
			Escribir "4) Secuencia de Fibonacci"
			Escribir "5) Salir"
			Escribir "=================================="
			Escribir "Seleccione una opción (1-5): "
			Leer opcionPrincipal//se selecciona la opcion elegida
			
			//esta parte es la encargada de selleccionar cada bloque  de codigo
			Segun opcionPrincipal Hacer
				1:
					CalculadoraBasica()
				2:
					CalculadoraAreas()
				3:
					EstadisticaBasica()
				4:
					Fibonacci()
				5:
					Escribir "¡Gracias por usar la aplicación! ¡Hasta luego!"
				De Otro Modo:
					Escribir "Opción inválida. Intente de nuevo."
					Esperar Tecla
			FinSegun
		FinMientras
		
FinAlgoritmo

// =============================================
// SUBPROCESO: Calculadora Básica
// =============================================
SubProceso CalculadoraBasica //bloque encargaddo de realizar las operaciones basicas
    Definir opcion Como Entero
    Definir n1, n2, resultado Como Real//solo dos variables que se usaran para las operaciones y una para el resultado
	
    Mientras opcion <> 5 Hacer
        Escribir ""
        Escribir "===== CALCULADORA BÁSICA ====="
        Escribir "1) Sumar ( + )"
        Escribir "2) Restar ( - )"
        Escribir "3) Multiplicar ( * )"
        Escribir "4) Dividir ( / )"
        Escribir "5) Volver al menú principal"
        Escribir "Seleccione una opción (1-5): "
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Ingrese el primer número: "
                Leer n1
                Escribir "Ingrese el segundo número: "
                Leer n2
                resultado <- n1 + n2
                Escribir "Resultado: ", resultado
            2:
                Escribir "Ingrese el primer número: "
                Leer n1
                Escribir "Ingrese el segundo número: "
                Leer n2
                resultado <- n1 - n2
                Escribir "Resultado: ", resultado
            3:
                Escribir "Ingrese el primer número: "
                Leer n1
                Escribir "Ingrese el segundo número: "
                Leer n2
                resultado <- n1 * n2
                Escribir "Resultado: ", resultado
            4:
                Escribir "Ingrese el primer número (dividendo): "
                Leer n1
                Escribir "Ingrese el segundo número (divisor): "
                Leer n2
                Si n2 = 0 Entonces//seccion encargada de evitar que el usuario divida entre cero
                    Escribir "ERROR: División por cero no permitida."
                Sino
                    resultado <- n1 / n2
                    Escribir "Resultado: ", resultado
                FinSi
            5:
                Escribir "Volviendo al menú principal..."
            De Otro Modo:
                Escribir "Opción inválida. Ingrese un número entre 1 y 5."
        FinSegun
		
        Si opcion <> 5 Entonces
            Escribir ""
            Escribir "Presione ENTER para continuar..."
            Esperar Tecla
        FinSi
    FinMientras
FinSubProceso

// =============================================
// SUBPROCESO: Calculadora de Áreas
// =============================================
SubProceso CalculadoraAreas
    Definir opcion Como Entero
    Definir radio, diametro, area, lado, base, altura, baseM, baseMe Como Real
    Definir tipo Como Cadena//variables independientes para cada figura
    Definir pii Como Real
    pii <- 3.141592
	
    Repetir
        Limpiar Pantalla//muestra el menu de figuras disponibles
        Escribir "=== CALCULADORA DE ÁREAS ==="
        Escribir "1) Círculo"
        Escribir "2) Cuadrado"
        Escribir "3) Triángulo"
        Escribir "4) Trapecio"
        Escribir "0) Volver al menú principal"
        Escribir ""
        Escribir "Selecciona una opción: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Círculo seleccionado."
                Escribir "¿Vas a introducir Radio (R) o Diámetro (D)? "//valida si se quiere usar el radio o el diametro
                Leer tipo
                Si tipo = "R" O tipo = "r" Entonces//validar si se introduce el valor en mayusculas o minusculas
                    Escribir "Introduce el radio: "
                    Leer radio
                    diametro <- radio * 2
                    area <- pii * radio * radio
                    Escribir "Radio: ", radio
                    Escribir "Diámetro: ", diametro
                    Escribir "Área: ", area
                Sino
                    Si tipo = "D" O tipo = "d" Entonces//validar si se introduce el valor en mayuscula o minuscula
                        Escribir "Introduce el diámetro: "
                        Leer diametro
                        radio <- diametro / 2
                        area <- pii * radio * radio
                        Escribir "Diámetro: ", diametro
                        Escribir "Radio: ", radio
                        Escribir "Área: ", area
                    Sino
                        Escribir "Opción inválida. Use R o D."//regresa si se ingreso un dato erroneo
                    FinSi
                FinSi
            2:
                Escribir "Cuadrado seleccionado."
                Escribir "Introduce el lado: "
                Leer lado
                area <- lado * lado
                Escribir "Área: ", area
            3:
                Escribir "Triángulo seleccionado."
                Escribir "Introduce la base: "
                Leer base
                Escribir "Introduce la altura: "
                Leer altura
                area <- (base * altura) / 2
                Escribir "Área: ", area
            4:
                Escribir "Trapecio seleccionado."
                Escribir "Introduce la base mayor: "
                Leer baseM
                Escribir "Introduce la base menor: "
                Leer baseMe
                Escribir "Introduce la altura: "
                Leer altura
                area <- ((baseM + baseMe) / 2) * altura
                Escribir "Área: ", area
            0:
                Escribir "Volviendo al menú principal..."
            De Otro Modo:
                Escribir "Opción no válida."
        FinSegun
		
        Si opcion <> 0 Entonces
            Escribir ""
            Escribir "Presiona ENTER para continuar..."
            Esperar Tecla
        FinSi
    Hasta Que opcion = 0
FinSubProceso

// =============================================
// SUBPROCESO: Estadística Básica
// =============================================
SubProceso EstadisticaBasica
    Definir n, i, j Como Entero
    Definir numeros Como Real
    Definir suma, media, mediana, moda Como Real
    Definir aux, maxFrecuencia, frecuencia Como Entero
	
    Escribir "¿Cuántos números deseas ingresar? "//solicita cuantos numeros quiere el usuario
    Leer n
	
    Si n <= 0 Entonces
        Escribir "Error: Debe ingresar al menos un número."//revisa si el numero es menor a zero
        Esperar Tecla
        
    FinSi
	
    Dimension numeros[n]
	
    Para i <- 1 Hasta n Hacer
        Escribir "Ingresa el número ", i, ": "
        Leer numeros[i]
    FinPara
	
    suma <- 0
    Para i <- 1 Hasta n Hacer//calcula el promedio
        suma <- suma + numeros[i]
    FinPara
    media <- suma / n
	
    Para i <- 1 Hasta n-1 Hacer//ordena los numeros para calcular la mediana
        Para j <- i+1 Hasta n Hacer
            Si numeros[j] < numeros[i] Entonces
                aux <- numeros[i]
                numeros[i] <- numeros[j]
                numeros[j] <- aux
            FinSi
        FinPara
    FinPara
	
    Si n % 2 = 0 Entonces
        mediana <- (numeros[n/2] + numeros[n/2 + 1]) / 2
    Sino
        mediana <- numeros[(n+1)/2]
    FinSi
	
    maxFrecuencia <- 0
    moda <- numeros[1]
    Para i <- 1 Hasta n Hacer//calcular la moda
        frecuencia <- 0
        Para j <- 1 Hasta n Hacer
            Si numeros[i] = numeros[j] Entonces
                frecuencia <- frecuencia + 1
            FinSi
        FinPara
        Si frecuencia > maxFrecuencia Entonces
            maxFrecuencia <- frecuencia
            moda <- numeros[i]
        FinSi
    FinPara
	
    Escribir ""//esta parte muestra los resultados
    Escribir "=== RESULTADOS ESTADÍSTICOS ==="
    Escribir "Media: ", media
    Escribir "Mediana: ", mediana
    Escribir "Moda: ", moda
    Escribir ""
    Escribir "Presione ENTER para volver..."
    Esperar Tecla
FinSubProceso

// =============================================
// SUBPROCESO: Fibonacci
// =============================================
SubProceso Fibonacci
    Definir inicio, n, contador Como Entero
    Definir a, b, c Como Entero
	
    Escribir "Ingresa el número inicial (debe ser >= 0): "
    Leer inicio
    Si inicio < 0 Entonces//revisa si el numero negativo 
        Escribir "Error: El número inicial debe ser no negativo."
        Esperar Tecla
        
    FinSi
	
    Escribir "¿Cuántos términos deseas generar? "//guarda la cantidad de numeros que se quieren
    Leer n
    Si n <= 0 Entonces// revisa si el numero no es negativo
        Escribir "Error: Debe generar al menos un término."
        Esperar Tecla
        
    FinSi
	
    a <- 0
    b <- 1
	
    Mientras a < inicio Hacer
        c <- a + b
        a <- b
        b <- c
    FinMientras
	
    contador <- 0
    Escribir ""
    Escribir "=== SUCESIÓN DE FIBONACCI ==="
    Mientras contador < n Hacer//genera y muestra todos los datos
        Escribir a
        c <- a + b
        a <- b
        b <- c
        contador <- contador + 1
    FinMientras
	
    Escribir ""
    Escribir "Presione ENTER para volver..."//este se encarga de regresarnos al menu
    Esperar Tecla
FinSubProceso
