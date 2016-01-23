package web;

import data.ParcelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ultmate
 */

@Controller
public class ParcelController {
    
    private ParcelRepository parcelRepository;
//    private static final String MAX_LONG_AS_STRING = Long.toString(Long.MAX_VALUE);
    
    @Autowired
    public ParcelController(ParcelRepository parcelRepository) {
        this.parcelRepository = parcelRepository;
    }
    
    @RequestMapping(value = "/postParcel")
    public String postParcel(Model model) {
        
        return "postParcel";
    }
    
    @RequestMapping(value = "/parcelStatus")
    public String parcelStatus(
            Model model,
            @RequestParam(value="max", defaultValue=Long.MAX_VALUE+"") long max,
            @RequestParam(value="count", defaultValue="10") int count) {
        model.addAttribute("parcelList",
                parcelRepository.findParcel(max, count));
        return "parcelStatus";
    }
}
