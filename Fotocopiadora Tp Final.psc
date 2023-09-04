Algoritmo Fotocopia
	Definir opcion, hojascargadas, hojas Como Entero
	Escribir "Bienvenido"
	Escribir "FOTOCOP504"
	Escribir "Por favor cargar hojas en la bandeja" //parto desde un inicio sin hojas cargadas
	Escribir "Cantidad de hojas que se cargaron"
	Leer cantidad_de_hojas
	
	Escribir "Hay " cantidad_de_hojas " hojas en la bandeja"
	
	Repetir
		//mostrar menu
		Escribir ""
		Escribir "0. Precios"
		Escribir "1. Hacer una copia"
		Escribir "2. Recargar hojas"
		Escribir "3. Hacer presupuesto"
		Escribir "4. Apagar"
		Escribir "Ingresar opción"
		Leer opcion //procesar opciones 
		
		Segun opcion Hacer
			
			0: Escribir "Precios"
				Escribir "Simple faz: menos de 20 $15, entre 20 y 50 $12, más de 50 $10"
				Escribir "Doble faz: menos de 20 $22, entre 20 y 50 $18, más de 50 $16"
			1:  
				
				Escribir "Hay " cantidad_de_hojas " hojas en la bandeja"
				Si cantidad_de_hojas = 0 Entonces
					Escribir "Recargar en opción 2"
				SiNo
					
					
					Escribir "Ingrese la cantidad de hojas a copiar"
					Leer cantidad_de_copias
					Si cantidad_de_copias <= cantidad_de_hojas Y cantidad_de_hojas <> 0 Entonces
						cantidad_de_hojas <- cantidad_de_hojas - cantidad_de_copias
						Escribir "Ingresar opcion"
						Escribir "1. Simple faz"
						Escribir "2. Doble faz"
						Leer opciones
						Segun opciones Hacer
							1:
								Si cantidad_de_copias <= 20 Entonces
									precio = cantidad_de_copias * 15
								SiNo
									Si cantidad_de_copias > 20 Y cantidad_de_copias <= 50 Entonces
										precio = cantidad_de_copias * 12
									SiNo
										precio = cantidad_de_copias * 10
									FinSi
								FinSi
								Escribir "El total de copias es: " cantidad_de_copias ". El monto a pagar es: $" precio
							2:
								Si cantidad_de_copias <= 20 Entonces
									precio = cantidad_de_copias * 22
								SiNo
									Si cantidad_de_copias > 20 Y cantidad_de_copias <= 50 Entonces
										precio = cantidad_de_copias * 18
									SiNo
										precio = cantidad_de_copias * 16
									FinSi
								FinSi
								Escribir "El total de copias es: " cantidad_de_copias ". El monto a pagar es: $" precio
						FinSegun
					SiNo
						Escribir "No hay hojas suficientes para imprimir todo el documento"
						Escribir "Por favor recargue"
					Fin Si
				FinSi
				
			2:
				Escribir "2. Recargar hojas"
				Escribir "Cantidad de hojas que se cargaron"
				Leer hojas_recargadas
				cantidad_de_hojas <- hojas_recargadas + cantidad_de_hojas
				Escribir "Hay " cantidad_de_hojas " hojas en la bandeja"
			3:
				Escribir "3. Hacer presupuesto"
				Escribir "Cantidad de hojas a copiar"
				Leer cantidad_de_copias
				Escribir "Ingresar opcion"
				Escribir "1. Simple faz"
				Escribir "2. Doble faz"
				Leer opciones
				Segun opciones Hacer
					1:
						Si cantidad_de_copias <= 20 Entonces
							precio = cantidad_de_copias * 15
						SiNo
							Si cantidad_de_copias > 20 Y cantidad_de_copias <= 50 Entonces
								precio = cantidad_de_copias * 12
							SiNo
								precio = cantidad_de_copias * 10
							FinSi
						FinSi
						Escribir "El total de copias es: " cantidad_de_copias ". El monto a pagar sería de: $" precio
					2:
						Si cantidad_de_copias <= 20 Entonces
							precio = cantidad_de_copias * 22
						SiNo
							Si cantidad_de_copias > 20 Y cantidad_de_copias <= 50 Entonces
								precio = cantidad_de_copias * 18
							SiNo
								precio = cantidad_de_copias * 16
							FinSi
						FinSi
						Escribir "El total de copias es: " cantidad_de_copias ". El monto a pagar sería de: $" precio
				FinSegun
				
		Fin Segun
	Hasta Que opcion=4
	Escribir "Apagando"
FinAlgoritmo
