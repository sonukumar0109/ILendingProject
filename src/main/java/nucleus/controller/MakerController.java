package nucleus.controller;


import nucleus.model.Customer;
import nucleus.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class MakerController {
    @Autowired
    CustomerService customerService;

    @GetMapping("/insertCustomer")
    public String insertCustomerForm(){
        return "createcustomer";
    }

    @PostMapping("/createacustomer")
    public String createCustomerDetails(@RequestParam("userCode") Integer userCode,@RequestParam("firstName") String firstName,@RequestParam("lastName") String lastName,@RequestParam("organizationCode") Integer organizationCode,@RequestParam("organizationName") String organizationName,@RequestParam("groupCode") String groupCode,@RequestParam("groupName") String groupName,@RequestParam("userType") String userType,@RequestParam("mobile") String mobile,@RequestParam("email") String email, ModelMap mp){
        String msg = customerService.AddCustomerService(userCode,firstName,lastName,organizationCode,organizationName,groupCode,groupName,userType,mobile,email);
        mp.addAttribute("msg",msg);
        return "createcustomer";
    }

    @GetMapping("/updateCustomer")
    public String updateCustomerForm(){
        return "updateform";
    }

    @PostMapping("/updateacustomer")
    public String updateCustomer(@RequestParam("userCode") Integer userCode,@RequestParam("firstName") String firstName,@RequestParam("lastName") String lastName,@RequestParam("mobile") String mobile,@RequestParam("email") String email, ModelMap mp){
        String msg = customerService.updateCustomerService(userCode,firstName,lastName,mobile,email);
        mp.addAttribute("msg",msg);
        return "updateform";
    }

    @GetMapping("/viewCustomer")
    public ModelAndView showCustomer(){
        ArrayList<Customer> customerArrayList = (ArrayList<Customer>) customerService.getCustomerService();
        ModelAndView model = new ModelAndView("viewcustomer");
        model.addObject("customerArrayList",(ArrayList<Customer>)customerArrayList);
        return model;
    }

    @GetMapping("/deleteCustomer")
    public String deleteCustomerForm(){
        return "deleteform";
    }

    @PostMapping("/deleteacustomer")
    public String deleteCustomer(@RequestParam("userCode") Integer userCode,ModelMap mp){
        String msg = customerService.deleteCustomerService(userCode);
        mp.addAttribute("msg",msg);
        return "deleteform";
    }
}
