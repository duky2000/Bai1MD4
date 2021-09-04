package Service.CRUD;

import Model.Customer;

import java.util.ArrayList;

public class CustomerService {
    public ArrayList<Customer> list = new ArrayList<>();
    public CustomerService(){
        list.add(new Customer(1,"ky","nam"));
        list.add(new Customer(2,"cao","nu"));
        list.add(new Customer(3,"dat","nam"));
    }
    public void add(Customer customer){
        list.add(customer);
    }

    public void edit(Customer customer,int index){
        list.set(index,customer);
    }

    public void delete(int index){
        list.remove(index);
    }
}
