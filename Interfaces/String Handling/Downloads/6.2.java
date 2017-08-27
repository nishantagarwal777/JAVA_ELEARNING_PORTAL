//Example of insert() method
												
  class Simple{
  	public static void main(String args[]){

		StringBuffer sb = new StringBuffer("01234567");
		sb.insert(4, "abc");
		System.out.println( sb ); // output is "0123abc4567"
	}
  }