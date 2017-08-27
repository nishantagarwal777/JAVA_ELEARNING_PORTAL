//Example of equalsIgnoreCase() method
  
  class Simple{
	public static void main(String args[]){
	
		String x = "Exit";
		String y = "EXIT";		
		System.out.println(“x is equal to y:”+x.equalsIgnoreCase(y));// Output is 
													    //“x is equal to y:false”
		System.out.println( x.equalsIgnoreCase("Entrance")); // is "false"	
	}
  }