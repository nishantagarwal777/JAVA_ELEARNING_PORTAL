//Example of == operator

  class Simple{
	  public static void main(String args[]){
  		
		String s1="Sachin";
		String s2="Sachin";
		String s3= new String("Sachin");
		
		System.out.println(s1==s2);//true (because both refer to the same instance)
		System.out.println(s1==s3);//false(because s3 refers to an 
      							   //instance created in nonpool memory)

  	  }
  }