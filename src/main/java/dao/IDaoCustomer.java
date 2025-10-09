package dao;
import java.util.LinkedList;
import model.Customer;;

public interface IDaoCustomer {

	public abstract LinkedList<Customer> find();
	public abstract Boolean addOne(Customer customer);
}
