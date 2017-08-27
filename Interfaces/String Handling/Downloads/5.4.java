//Example of substring() method
												
  class Simple{
  	public static void main(String args[]){

		String x = "0123456789"; // as if by magic, the value of each char 
							 // is the same as its index!
		System.out.println( x.substring(5) ); // output is "56789"
		System.out.println( x.substring(5, 8)); // output is "567" 
	}
  }