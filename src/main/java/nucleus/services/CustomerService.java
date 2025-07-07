package nucleus.services;

import nucleus.dao.CustomerDao;
import nucleus.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class CustomerService {
    @Autowired
    CustomerDao customerDao;

    @Transactional
    public String AddCustomerService(int userCode,String firstName, String lastName, int organizationCode,String organizationName,String groupCode,String groupName, String userType, String mobileNo,String email){
        Customer customer = new Customer(userCode,firstName,lastName,organizationCode,organizationName,groupCode,groupName,userType,mobileNo,email);
        return customerDao.addCustomer(customer);

    }
    @Transactional
    public String updateCustomerService(int userCode,String firstName,String lastName,String mobile,String email){
        return customerDao.updateCustomer(userCode,firstName,lastName,mobile,email);
    }

    @Transactional
    public List<Customer> getCustomerService(){
        return customerDao.getCustomers();
    }

    @Transactional
    public String deleteCustomerService(int userCode){
        return customerDao.deleteCustomer(userCode);
    }
}
