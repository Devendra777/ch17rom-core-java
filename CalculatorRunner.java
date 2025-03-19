class CalculatorRunner{


    public static void main(String  operations[]){
	 int number = 90 ; 
	 int anotherNumber = 415;
	  // invoking add method of Calcuator
	   int ref =   Calcuator.add(number , anotherNumber);	
		 System.out.println(Calcuator.add(number , anotherNumber));
		  System.out.println("The  Addition "+ number + " and "+ anotherNumber+" is : "+ref);
	   
	}



}