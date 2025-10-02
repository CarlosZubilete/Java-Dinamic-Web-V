package dao;
import java.util.LinkedList;
import model.Customer;;

public interface IDaoCustomer {

	public abstract LinkedList<Customer> find();
}
