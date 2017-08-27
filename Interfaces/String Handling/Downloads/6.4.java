//Example of delete() method
												
  class Simple{
  	public static void main(String args[]){

		StringBuffer sb = new StringBuffer("0123456789");
		System.out.println(sb.delete(4,6)); // output is "01236789"
	}
  }