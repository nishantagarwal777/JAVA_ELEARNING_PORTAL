//Example of immutable class
												
  public final class Employee{
		final String pancardNumber; // final data member
		
		public Employee(String pancardNumber){
			this.pancardNumber=pancardNumber;
		}

		public String getPancardNumber(){ // getter method
			return pancardNumber;
		}
  }