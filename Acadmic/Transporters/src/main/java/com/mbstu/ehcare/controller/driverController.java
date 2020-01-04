package com.mbstu.ehcare.controller;
//import com.mbstu.ehcare.dao.DriverDetailsRepository;
import com.mbstu.ehcare.dao.DriverRepository;
import com.mbstu.ehcare.model.Driver;
//import com.mbstu.ehcare.model.DriverDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class driverController {
    @Autowired
    private DriverRepository driverRepository;

    @RequestMapping(value = "/upsertDriver", method = RequestMethod.GET)
    public String driverEdit(Model model, @RequestParam(value ="driverId", required=false) Integer driverId) {
        System.out.println("----------DriverEdit---------");
        if(driverId== null){
            Driver driver = new Driver();
            model.addAttribute("driver", driver);
        }
        else {
            Driver driver = driverRepository.getDriverById(driverId);
            System.out.println(driver);
            model.addAttribute("driver", driver);
        }
        return "driver";
    }

    @RequestMapping(value = "/upsertDriver", method = RequestMethod.POST)
    public String driverUpdatePost(Model model, @ModelAttribute("driver") Driver driver, HttpServletRequest request) {
        System.out.println("-----------driverPost-------------");
        System.out.println(driver);
        try{
            driverRepository.save(driver);
            request.setAttribute("message", "Edited successfully");
        }catch(Exception e){
            request.setAttribute("message", "Faild to save Edit");
        }
        return "redirect:./driverList";
    }

    @RequestMapping(value = "/deleteDriver", method = RequestMethod.GET)
    public String deleteDriver(Model model, @RequestParam(value="driverId", required=false) Integer driverId) {
        System.out.println("-----------delete-------------driverId:"+driverId);
        Driver driver = driverRepository.getDriverById(driverId);
        driverRepository.delete(driver);
        return "redirect:./driverList";
    }

    @RequestMapping(value = "/driverList", method = RequestMethod.GET)
    public String driverListView(Model model) {
        System.out.println("-----------driverListView-------------");
        List<Driver> driverList=driverRepository.findAll();
        model.addAttribute("driverList",driverList);
        return "driverList";
    }
}