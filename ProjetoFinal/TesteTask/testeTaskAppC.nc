configuration testeTaskAppC{
}
implementation{
	
	components testeC, MainC;
	
	testeC -> MainC.Boot;  
	
}