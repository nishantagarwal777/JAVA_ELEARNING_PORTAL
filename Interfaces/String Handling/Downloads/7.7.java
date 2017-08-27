//Example of ensureCapacity() method
												
  class Simple{
  	public static void main(String args[]){

		StringBuilder sb= new StringBuilder();
		System.out.println(sb.capacity());//default 16

		sb.ensureCapacity(10);//now no change
		System.out.println(sb.capacity());//now 16

		sb.ensureCapacity(30);//now (16*2)+2
		System.out.println(sb.capacity());//now 34

	}
  }