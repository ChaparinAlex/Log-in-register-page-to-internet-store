package spring.mvc.united;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.mvc.united.model.Good;
import spring.mvc.united.service.GoodService;

@Controller
public class GoodController {
	
	private GoodService goodService;
	
	@Autowired(required=true)
	@Qualifier(value="goodService")
	public void setGoodService(GoodService gs){
		this.goodService = gs;
	}
	
	@RequestMapping(value = "/goods", method = RequestMethod.GET)
	public String listGoods(Model model) {
		model.addAttribute("good", new Good());
		model.addAttribute("listGoods", this.goodService.listGoods());
		return "good";
	}
	
	//For add and update good both
	@RequestMapping(value= "/good/add", method = RequestMethod.POST)
	public String addGood(@ModelAttribute("good") Good g){
		
		if(g.getId() == 0){
			//new good, add it
			this.goodService.addGood(g);
		}else{
			//existing person, call update
			this.goodService.updateGood(g);
		}
		
		return "redirect:/goods";
		
	}
	
	@RequestMapping("/removegood/{id}")
    public String removeGood(@PathVariable("id") int id){
		
        this.goodService.removeGood(id);
        return "redirect:/goods";
    }
 
    @RequestMapping("/editgood/{id}")
    public String editGood(@PathVariable("id") int id, Model model){
        model.addAttribute("good", this.goodService.getGoodById(id));
        model.addAttribute("listGoods", this.goodService.listGoods());
        return "good";
    }
	
}
