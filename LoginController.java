package spring.mvc.united;

import java.util.Map;
 
import javax.validation.Valid;
 
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.mvc.united.model.User;
 
@Controller
public class LoginController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String viewLogin(Map<String, Object> model) {
        User user = new User();
        model.put("userForm", user);
        return "LoginRegForm";
    }
 
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String doLogin(@Valid @ModelAttribute("userForm") User userForm,
                          BindingResult result, Map<String, Object> model) {
 
    	if (userForm.getEmail() == "" || userForm.getPassword() == "") return "redirect:/login";
    		return "LoginSuccess";    	
    }
}
