public abstract class MainEntity {
  public id;
  public status = "a";
  public createdAt;
  public updatedAt

  // GETTER SETTERS
}

public abstract class Animal extends MainEntity{
	protected type;
	protected birthDate;
	protected name;
	protected total = 1; // unsgined
	protected gender;
	protected price;

	// GETTER SETTERS
} 

public class Bird extends Animal{


}

public class Cat extends Animal{

}

public class Dog extends Animal{

}


public class Customer extends MainEntity{
	public birth_date;
	public firstName;
	public lastName;
	public gender;

	// GETTER SETTERS
}

public class AnimalSale extends MainEntity{
	public customer : Customer;
	public cat :  Cat | null;
	public dog :  Dog | null;
	public bird :  Bird | null;
	public catQuantity = 0;
	public birdQuantity = 0;
	public dogQuantity = 0;
	public discount = 0;
	public totalPrice = 0;

	// GETTER SETTERS

}

