//Example of append() method
												
  class Simple{
  	public static void main(String args[]){

		StringBuilder sb = new StringBuilder("set ");
		sb.append("point");
		System.out.println(sb); // output is "set point" 

		StringBuilder sb2 = new StringBuilder("pi = ");
		sb2.append(3.14159f);
		System.out.println(sb2); // output is "pi = 3.14159"
	}
  }