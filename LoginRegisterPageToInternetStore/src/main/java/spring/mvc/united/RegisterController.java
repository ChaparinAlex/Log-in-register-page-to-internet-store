package spring.mvc.united;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.mvc.united.model.User;
 
@Controller
public class RegisterController {
 
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        User userForm = new User();     
        model.put("userForm", userForm);
        
        return "LoginRegForm";
    }
     
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") User user, 
            Map<String, Object> model) {
    	
    	if (user.getFirstName() == "" || user.getLastName() == "" || user.getEmail() == ""
    			|| user.getPassword() == "")
    		return "LoginRegForm";
            	
    	return "RegistrationSuccess";
    }
}

