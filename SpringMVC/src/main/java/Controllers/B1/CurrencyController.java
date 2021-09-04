package Controllers.B1;

import Service.B1.Currency;
import Service.B1.CurrencyConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CurrencyController {
    //    @Autowired
//    private CurrencyConverter currencyConverter;
    CurrencyConverter currencyConverter = new Currency();

    @GetMapping("/calculate")
    public String showForm() {
        return "/View/homeCurrency.jsp";
    }

    @GetMapping("/convert")
    public String calculate(Model model, @RequestParam("usd") double usd, @RequestParam("rate") double rate) {
        double result = currencyConverter.calculate(usd, rate);
        model.addAttribute("result", result);
        return "/View/homeCurrency.jsp";
    }
}
