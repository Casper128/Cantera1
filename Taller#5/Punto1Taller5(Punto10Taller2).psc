//Ingresar Dinero
SubProceso saldo<-sumar(saldo,cantidad)
	Escribir "Ingresar dinero:";
	
	Escribir "Su saldo actual es: ",saldo;
	Escribir "Digite la cantidad que desea ingresar en la cuenta:";
	Leer Cantidad;
	si cantidad <= -1 Entonces
		Escribir " Valor digitado es negativo y no es posible continuar";
	SiNo
		Escribir" Valor ingresado es correcto";
		saldo<-saldo+cantidad;
		Escribir "Su saldo actual es: ",saldo;
	FinSi
	
FinSubProceso
//Retirar dinero
SubProceso saldo<-restar(saldo,cantidad)
	Escribir "Desea retirar dinero:";
	Escribir "Su saldo actual es: ",saldo;
	Escribir "Digite la cantidad que desea retirar de la cuenta:";
	Leer Cantidad;
	si cantidad <= -1 | cantidad >= saldo Entonces
		Escribir " Valor digitado es negativo y no es posible continuar";
	SiNo
		Escribir" Valor ingresado para descontar es correcto";
		saldo<-saldo-cantidad;
		Escribir "Su saldo actual es: ",saldo;
	FinSi
FinSubProceso
//Consultar saldo
Subproceso saldo<-consultarSaldo(saldo)
	Escribir "Consulta de saldo";
	Escribir "Su saldo actual es: ",saldo;
FinSubProceso
Proceso Punto10Taller2
	//10.	El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios; 
	//por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. 
	//Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas de valor. 
	//En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que tiene en la cuenta.
	Definir titular Como Caracter;
	Definir cantidad Como Entero;
	cantidad<-0;
	Definir saldo Como Entero;
	Definir saldoResultado Como Entero;
	Definir retiro Como Entero;
	retiro<-0;
	Definir ingreso Como Entero;
	ingreso<-0;
	Definir opcion Como Entero;
	Escribir "Bienvenidos a Su Banco fiel , Que desea hacer elija una opcion por favor: ";
	Escribir "1.Desea hacer un ingreso a la cuenta";
	Escribir "2.Desea hacer un retiro de la cuenta";
	Escribir "3.Desea consultar su saldo";
	Saldo<-1000;
	Leer opcion;
	Escribir "Digite el titular de la cuenta: ";
	Leer titular;
	Segun opcion Hacer
		1: 
			saldo<-sumar(saldo,cantidad);

		2: 
			saldo<-restar(saldo,cantidad);

		3: 
			saldo<-consultarSaldo(saldo);
	FinSegun
	Escribir "Cuenta actual es de ",titular," con un saldo de ",saldo;
	
FinProceso
