package Controllers.BTVN;

import Model.BTVN.Hocvien;
import Service.BTVN.HocvienService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hocvien")
public class HocvienController {
    HocvienService hocvienService = new HocvienService();

    @RequestMapping("/homeHocvien")
    public String home(HttpServletRequest request) {
        request.setAttribute("list", hocvienService.list);
        return "/ViewHocvien/show.jsp";
    }

    @GetMapping("/create")
    public String showCreate() {
        return "/ViewHocvien/create.jsp";
    }

    @GetMapping("/edit")
    public ModelAndView showEdit(@RequestParam("index") int index) {
        ModelAndView modelAndView = new ModelAndView("/ViewHocvien/edit.jsp");
        modelAndView.addObject("listEdit",hocvienService.list.get(index));
        modelAndView.addObject("index",index);
        return modelAndView;
    }

    @GetMapping("/delete")
    public String delete(@RequestParam int index) {
        hocvienService.delete(index);
        return "redirect:/hocvien/homeHocvien";
    }

    @GetMapping("/find")
    public ModelAndView find(@RequestParam("find") String name) {
        hocvienService.find(name);
        ModelAndView modelAndView = new ModelAndView("/ViewHocvien/show.jsp");
        modelAndView.addObject("list", hocvienService.find(name));
        return modelAndView;
    }

    @PostMapping("/create")
    public String create(@ModelAttribute Hocvien hocvien) {
        hocvienService.add(hocvien);
        return "redirect:/hocvien/homeHocvien";
    }

    @PostMapping("/edit")
    public String edit(@ModelAttribute Hocvien hocvien, @RequestParam int index) {
        hocvienService.edit(hocvien, index);
        return "redirect:/hocvien/homeHocvien";
    }

}
