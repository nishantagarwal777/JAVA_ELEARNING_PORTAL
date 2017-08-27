 //Example of append() method
												
  class Simple{
  	public static void main(String args[]){

		StringBuffer sb = new StringBuffer("set ");
		sb.append("point");
		System.out.println(sb); // output is "set point" 

		StringBuffer sb2 = new StringBuffer("pi = ");
		sb2.append(3.14159f);
		System.out.println(sb2); // output is "pi = 3.14159"
	}
  }