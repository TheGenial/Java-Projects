package com.mbstu.ehcare.controller;


import com.mbstu.ehcare.dao.CarRepository;
import com.mbstu.ehcare.model.Car;
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
public class carController {
    @Autowired
    private CarRepository carRepository;


    @RequestMapping(value = "/upsertCar", method = RequestMethod.GET)
    public String carEdit(Model model, @RequestParam(value ="carId", required=false) Integer carId) {
        System.out.println("----------CarEdit---------");
        if(carId== null){
            Car car = new Car();
            model.addAttribute("car", car);
        }
        else {
            Car car = carRepository.getCarById(carId);
            model.addAttribute("car", car);
        }
        return "car";
    }

    @RequestMapping(value = "/upsertCar", method = RequestMethod.POST)
    public String carUpdatePost(Model model, @ModelAttribute("car") Car car, HttpServletRequest request) {
        System.out.println("-----------carPost-------------");
        System.out.println(car);
        try{
            carRepository.save(car);
            request.setAttribute("message", "Edited successfully");
        }catch(Exception e){
            request.setAttribute("message", "Faild to save Edit");
        }
        return "redirect:./carList";
    }

    @RequestMapping(value = "/deleteCar", method = RequestMethod.GET)
    public String deleteCar(Model model, @RequestParam(value="carId", required=false) Integer carId) {
        System.out.println("-----------delete-------------carId:"+carId);
        Car car = carRepository.getCarById(carId);
        carRepository.delete(car);
        return "redirect:./carList";
    }

    @RequestMapping(value = "/carList", method = RequestMethod.GET)
    public String carListView(Model model) {
        System.out.println("-----------carListView-------------");

        List<Car> carList=carRepository.findAll();
        model.addAttribute("carList",carList);
        return "carList";
    }
}