//Example of equals() method

  class Simple{
	  public static void main(String args[]){
	  
  		String x = "Exit";
		String y = "EXIT";
		
		System.out.println( “x is equal to y:”+x.equals(y)); // Output is “x is equal to y:false”
		System.out.println( x.equals("Entrance")); // is "false"
	}
  }