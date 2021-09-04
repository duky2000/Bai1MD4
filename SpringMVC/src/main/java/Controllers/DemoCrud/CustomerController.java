package Controllers.DemoCrud;

import Model.Customer;
import Service.CRUD.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CustomerController {
    CustomerService customerService = new CustomerService();

    @RequestMapping("/home")
    public String home(HttpServletRequest request) {
        request.setAttribute("list", customerService.list);
        return "/WEB-INF/home.jsp";
    }

    @GetMapping("/create")
    public String showCreate() {
        return "/WEB-INF/create.jsp";
    }
    @GetMapping("/edit")
    public String showEdit(HttpServletRequest request,@RequestParam int index){
        request.setAttribute("editlist",customerService.list.get(index));
        return "/WEB-INF/edit.jsp";
    }
    @GetMapping("/delete")
    public String delete( @RequestParam int index){
       customerService.delete(index);
        return "redirect:/home";
    }
    @PostMapping("/create")
    public String creaate( @ModelAttribute Customer customer) {
        customerService.add(customer);
        return "redirect:/home";
    }
    @PostMapping("/edit")
    public String edit( @ModelAttribute Customer customer,@RequestParam int index) {
        customerService.edit(customer, index);
        return "redirect:/home";
    }

}
