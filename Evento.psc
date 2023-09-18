Algoritmo Evento
	Leer entrada
	cantidad<-cantidad + entrada
	
		Si cantidad <= 200 Entonces
		Escribir "entradas disponible"
	SiNo
		Escribir "No hay entradas"
		
	Fin Si
	Repetir
		Leer entrada
		cantidad<-cantidad + entrada
		
		Si cantidad <= 200 Entonces
			Escribir "entradas disponible"
		SiNo
			Escribir "No hay entradas"
			
		Fin Si
	Hasta Que cantidad > 200
	
FinAlgoritmo
