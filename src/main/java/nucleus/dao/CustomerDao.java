package nucleus.dao;

import nucleus.model.Customer;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CustomerDao {
    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public String addCustomer(Customer customer){
        sessionFactory.getCurrentSession().save(customer);
        return "Customer added successfully";
    }

    public String updateCustomer(int userCode,String firstName,String lastName,String mobile,String email){
        Customer customer = sessionFactory.getCurrentSession().get(Customer.class,userCode);
        customer.setFirstName(firstName);
        customer.setLastName(lastName);
        customer.setMobileNo(mobile);
        customer.setEmail(email);
        sessionFactory.getCurrentSession().save(customer);
        return "Details Modified Successfully";
    }

    public List<Customer> getCustomers(){
        List<Customer> customerList = sessionFactory.getCurrentSession().createQuery("from Customer").list();
        return customerList;
    }
    public String deleteCustomer(int userCode){
        Customer customer = sessionFactory.getCurrentSession().get(Customer.class,userCode);
        if(customer!=null){
            sessionFactory.getCurrentSession().delete(customer);
        }
        return "One Customer deleted";
    }
}
