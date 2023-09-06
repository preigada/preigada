Algoritmo Costos_de_instalacion
	
	kit01<-2000
	kit02<-3000
	kit03<-5000
	kitcolgar<-2000
	kitapoyar<-1000
	trabajo<-3000
	taparrollo<-5000
	pared<-0
	
	Escribir "                                                                                               "
	Escribir "                            Bienvenidos a control_termico                                      "
	Escribir "                                                                                               "
	Escribir " Asegurese de tener los datos necesarios para realizar la consulta                             "
	Escribir "                                                                                               "
	Escribir " Kcalorias del equipo a instalar ?                                                             "
	Escribir " Distancia de instalacion entre las dos unidades ?                                             "
	Escribir " Ubicacion de la unidad interior/exterior ?                                                    "
	Escribir "                                                                                               "
	Escribir " Por favor indique si desea continuar con un SI o salir con un NO                              "
	Leer desicion
	Si desicion="si" Entonces
		Escribir " Por favor ingrese la opcion deseada                                                           "
		Escribir "                                                                                               "
		Escribir " El equipo a instalar es menor a 3000 Kcalorias ?, marque 1                                    "
		Escribir " El equipo a instalar es mayor a 3000 y menor a 4500 Kcalorias ?, marque 2                     "
		Escribir " El equipo a instalar es mayor a 4500 y menor a 6000 Kcalorias ?, marque 3                     "
		Leer capacidad
		Escribir " Por favor ingrese la distancia en mts entre la unidad interior y exterior                     "
		Escribir " donde serian potencialmente ubicadas que no sea menor a 3                                     "
		Leer distancia
		Segun capacidad Hacer
			"1" :
				interconexion = (distancia * kit01) + (8 * trabajo)
			"2" :
				interconexion = (distancia * kit02) + (8 * trabajo)
			"3" :
				interconexion = (distancia * kit03) + (12 * trabajo)
			De Otro Modo:
				Escribir " Por favor asegurese de ingresar la opcion correspondiente                                     "
				Escribir "                                                                                               "
				Escribir " El equipo a instalar es menor a 3000 Kcalorias ?, marque 1                                    "
				Escribir " El equipo a instalar es mayor a 3000 y menor a 4500 Kcalorias ?, marque 2                     "
				Escribir " El equipo a instalar es mayor a 4500 y menor a 6000 Kcalorias ?, marque 3                     "
				Leer capacidad
				Escribir " Por favor ingrese la distancia en mts entre la unidad interior y exterior                     "
				Escribir " donde serian potencialmente ubicadas que no SEA MENOR a 3                                     "
				Leer distancia
				Segun capacidad Hacer
					"1" :
						interconexion = (distancia * kit01) + (8 * trabajo)
					"2" :
						interconexion = (distancia * kit02) + (8 * trabajo)
					"3" :
						interconexion = (distancia * kit03) + (12 * trabajo)
				Fin Segun
		Fin Segun
		
		Escribir " La unidad exterior va colgada o apoyada sobre una superficie ?                                "
		Escribir "                                                                                               "
		Escribir " pulse 1 (colgada)                                                                             "
		Escribir " pulse 2 (apoyada)                                                                             "
		Leer opcion
		Segun opcion Hacer
			"1" :
				fijacion = interconexion + kitcolgar
			"2" :
				fijacion = interconexion + kitapoyar
			De Otro Modo:
				
				Escribir " Por favor asegurese de ingresar la opcion correspondiente                                     "
				Escribir " La unidad exterior va colgada o apoyada sobre una superficie ?                                "
				Escribir "                                                                                               "
				Escribir " pulse 1 (colgada)                                                                             "
				Escribir " pulse 2 (apoyada)                                                                             "
				Leer opcion
				Segun opcion Hacer
					"1" :
						fijacion = interconexion + kitcolgar
					"2" :
						fijacion = interconexion + kitapoyar
				FinSegun
		Fin Segun
		Escribir " La unidad interior se instala sobre taparollo o pared ?                                       "
		Escribir "                                                                                               "
		Escribir " pulse 1 (taparrollo)                                                                          "
		Escribir " pulse 2 (pared)                                                                               "
		Leer opcion
		Segun opcion Hacer
			"1" :
				colocacion = fijacion + taparrollo
			"2" :
				colocacion = fijacion + pared
			De Otro Modo:
				Escribir " Por favor asegurese de ingresar la opcion correspondiente                                     "
				Escribir " La unidad interior se instala sobre taparollo o pared ?                                       "
				Escribir "                                                                                               "
				Escribir " pulse 1 (taparrollo)                                                                          "
				Escribir " pulse 2 (pared)                                                                               "
				Leer opcion
				Segun opcion Hacer
					"1" :
						colocacion = fijacion + taparrollo
					"2" :
						colocacion = fijacion + pared
				Fin Segun
		Fin Segun
		Escribir "                                                                                               "
		Escribir " El presupuesto de la instalacion de su unidad de acuerdo a lo descripto anteriormente seria de"
		Escribir "                                                                                               "
		Escribir " Presupuesto $",colocacion
		Escribir "                                                                                               "
		Escribir " El presupuesto es un estimativo, no incluye gastos por materiales y trabajos adicionales fuera"
		Escribir " de lo contemplado en el mismo                                                                 "
		Escribir "                                                                                               "
		Escribir " La instalacion incluye                                                                        "
		Escribir "                                                                                               "
		Escribir " Mano de obra para la fijacion de la unidad interior y exterior                                "
		Escribir " Materiales de interconexion de las unidades                                                   "
		Escribir " Pruebas y puesta en marcha del equipo instalado                                               "
		Escribir "                                                                                               "
		Escribir " El trabajo y materiales de instalacion poseen garantia por un año                             "	
		Escribir "                                                                                               "
		Escribir "                                  Gracias por su visita                                        "
	SiNo
		Escribir " Gracias por su visita"
	Fin Si
	
FinAlgoritmo
