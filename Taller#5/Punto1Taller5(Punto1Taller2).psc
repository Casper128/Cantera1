
SubProceso Validacion(edad)
	si edad>=18 Entonces
		Escribir "Usted es mayor de edad.";
	FinSi
FinSubProceso

Proceso Punto1Taller2
//Realizar un programa en el cual se solicite la edad de una persona. 
//Si la persona es mayor o igual a 18 a�os, deber� mostrar en pantalla: Usted es mayor de edad.	
	
	Definir edad Como Entero;
	Escribir "Por favor ingrese su edad";
	Leer edad;
	Validacion(edad);

FinProceso
