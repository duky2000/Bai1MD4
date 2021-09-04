package Controllers.B2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculateController {
    @RequestMapping("/calculates")
    public String calculate(Model model, @RequestParam double num1, @RequestParam  double num2, @RequestParam String check){
        switch (check) {
            case "+":
                double result = num1 + num2;
                model.addAttribute("result", result);
                break;
            case "-":
                result = num1 - num2;
                model.addAttribute("result", result);
                break;
            case "*":
                result = num1 * num2;
                model.addAttribute("result", result);
                break;
            case "/":
                if (num2 == 0) {
                    model.addAttribute("result", "không chia được cho 0");
                } else {
                    result = num2 / num2;
                    model.addAttribute("result", result);
                }
                break;
        }
        return "/View/homeCalculate.jsp";
    }
    @GetMapping("/calculators")
    public String showForm() {
        return "/View/homeCalculate.jsp";
    }

}
